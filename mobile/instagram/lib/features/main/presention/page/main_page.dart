import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram/features/home/presention/pages/home_page.dart';
import 'package:instagram/features/main/presention/notifier/main_page_notifier_provider.dart';

class MainPage extends ConsumerWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainPageState = ref.watch(mainPageStateNotifierProvider);
    final mainPageNotifier = ref.watch(mainPageStateNotifierProvider.notifier);
    debugPrint("index ${mainPageState}");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Navigation Example'),
        ),
        body: const HomePage(), // new
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: mainPageState.currentIndexPage, // new
          onTap:(index){
            mainPageNotifier.handleSwitchTab(currentIndexTab: index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ],
        ),
      ),
    );
  }
}
