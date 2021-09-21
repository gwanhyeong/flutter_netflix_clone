import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/widget/custom_app_bar.dart';
import 'package:flutter_netflix_clone/widget/custom_bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const menuItems = [
    {
      'name': '홈',
      'icon': Icons.home_rounded,
      'badge': false,
    },
    {
      'name': '공개 예정',
      'icon': Icons.video_library_rounded,
      'badge': true,
    },
    {
      'name': '저장한 컨텐츠 목록',
      'icon': Icons.download_for_offline_rounded,
      'badge': false,
    },
  ];

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Netflix Clone',
      home: Scaffold(
        appBar: const CustomAppBar(),
        extendBodyBehindAppBar: true, // body height에 AppBar height도 포함시킴
        body: Container(
          color: Colors.black,
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(
          items: menuItems,
        ),
      ),
    );
  }
}
