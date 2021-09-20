import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
        child: Image.asset('assets/logo.png', fit: BoxFit.contain),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded)),
        IconButton(onPressed: () {}, icon: Image.asset('assets/profile.png')),
      ],
      backgroundColor: Colors.transparent,
      elevation: 0.0, // AppBar shadow 조절
    );
  }

  // 현재 AppBar의 Default Height를 사용하기에 그대로 재반환
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
