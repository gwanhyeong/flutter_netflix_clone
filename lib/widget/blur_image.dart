import 'package:flutter/material.dart';

class BlurImage extends StatelessWidget {
  final String assetName;
  const BlurImage({Key? key, required this.assetName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 0, color: Colors.black),
            image: DecorationImage(
              image: AssetImage(assetName),
              fit: BoxFit.fill,
            ),
          ),
        ),
        // 상단부 블러 처리
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0, -1),
              end: Alignment(0, -0.6),
              colors: [
                Colors.black,
                Colors.transparent,
              ],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        // 하단부 블러 처리
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0, 0.6),
              end: Alignment(0, 1),
              colors: [
                Colors.transparent,
                Colors.black,
              ],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
      ],
    );
  }
}
