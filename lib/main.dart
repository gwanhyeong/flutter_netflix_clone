import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/widget/custom_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
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
      ),
    );
  }
}
