import 'package:flutter/material.dart';

class VideoContextMenu extends StatelessWidget {
  const VideoContextMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0, color: Colors.black),
        color: Colors.black,
      ),
      height: 64,
      child: Row(
        children: [
          const Spacer(),
          SizedBox(
            width: 96,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.add_rounded,
                    color: Colors.white,
                  ),
                  Text(
                    '내가 찜한 콘텐츠',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      letterSpacing: -0.1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 16),
          SizedBox(
            width: 96,
            child: Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // background
                  onPrimary: Colors.black, // foreground
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.play_arrow_rounded),
                    SizedBox(width: 8),
                    Text('재생'),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          SizedBox(
            width: 96,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.info_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    '정보',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      letterSpacing: -0.1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
