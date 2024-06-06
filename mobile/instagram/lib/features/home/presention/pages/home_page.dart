import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram/features/home/presention/notifier/home_page_notifier.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    final homePageNotifier = ref.read(todoStateNotifierProvider.notifier);
    homePageNotifier.loadTodos();
  }

  @override
  Widget build(BuildContext context) {
    final homePageState = ref.watch(todoStateNotifierProvider);
    return const Text("hihi");
  }
}
