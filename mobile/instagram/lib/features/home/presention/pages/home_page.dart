import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram/features/home/presention/notifier/home_page_notifier.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    // Sử dụng addPostFrameCallback để đảm bảo loadTodos được gọi sau khi widget đã được xây dựng
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(todoStateNotifierProvider.notifier).loadTodos();
    });
  }

  @override
  Widget build(BuildContext context) {
    final todoState = ref.watch(todoStateNotifierProvider);
    return Scaffold(
      body: Center(
        child: todoState.isLoading ?? false
            ? CircularProgressIndicator()
            : Text("hello Riverpod"),
      ),
    );
  }
}
