import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/widget/blur_image.dart';
import 'package:flutter_netflix_clone/widget/category_menu.dart';
import 'package:flutter_netflix_clone/widget/custom_bottom_navigation_bar.dart';
import 'package:flutter_netflix_clone/widget/custom_header.dart';
import 'package:flutter_netflix_clone/widget/video_context_menu.dart';
import 'package:flutter_netflix_clone/widget/video_tag.dart';

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1 / 1.2,
                child: Stack(
                  children: [
                    const BlurImage(assetName: 'assets/poster.jpg'),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 48.0, 16.0, 0),
                      child: Column(
                        children: const [
                          CustomHeader(),
                          SizedBox(height: 8),
                          CategoryMenu(),
                          Spacer(),
                          VideoTag(
                            tags: [
                              '긴장감 넘치는',
                              '스릴러',
                              '괴생명체',
                              '생존',
                              '공포',
                            ],
                          ),
                          SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const VideoContextMenu(),
              Container(
                color: Colors.black,
                height: 280,
              ),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(
          items: menuItems,
        ),
      ),
    );
  }
}
