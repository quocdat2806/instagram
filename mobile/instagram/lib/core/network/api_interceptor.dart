import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'api_utils.dart';

class ApiInterceptors extends QueuedInterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    const token = 'xxxx';
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    final statusCode = err.response?.statusCode;
    final path = err.requestOptions.path;
    final uri = err.requestOptions.uri;
    final RequestOptions request = err.requestOptions;
    debugPrint("path${path}");

    switch (statusCode) {
      case 401:
        const savedToken = 'xxxx'; // Thay thế bằng cách lấy token từ lưu trữ
        String requestingTokens = err.requestOptions.headers['Authorization']
            .toString()
            .replaceFirst("Bearer ", "");

        if (savedToken != null && savedToken != requestingTokens) {
          final cloneReq = await _cloneRequest(
            accessToken: savedToken,
            request: request,
            uri: uri,
          );
          return handler.resolve(cloneReq);
        }

        if (savedToken == null) {
          return handler.next(err);
        }

        try {
          // const result = await ApiUtil.onRefreshToken(savedToken);
          const result =null;
          if (result != null) {
            // Save new token to storage
            final cloneReq = await _cloneRequest(
              accessToken: result.accessToken,
              request: request,
              uri: uri,
            );
            return handler.resolve(cloneReq);
          } else {
            _forceSignIn();
            return handler.next(err);
          }
        } catch (e) {
          _forceSignIn();
          return handler.next(err);
        }
      default:
        handler.next(err);
    }
  }

  Future<Response> _cloneRequest({
    required String accessToken,
    required RequestOptions request,
    required Uri uri,
  }) async {
    final newOptions = Options(
      method: request.method,
      headers: request.headers,
    );
    newOptions.headers!['Authorization'] = 'Bearer $accessToken';
    return await ApiUtil.getDio().requestUri(
      uri,
      options: newOptions,
      data: request.data,
    );
  }

  void _forceSignIn() {
    // Clear session and navigate to sign-in page
    // SecureStorageHelper.instance.removeToken();
    // GoRouter.of(AppRouter.navigationKey.currentContext!)
    //     .pushReplacementNamed(AppRouter.signIn);
  }
}
