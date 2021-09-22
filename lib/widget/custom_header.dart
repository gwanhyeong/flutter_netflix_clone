import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/logo.png',
          width: 24,
          fit: BoxFit.fitWidth,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search_rounded),
          color: Colors.white,
          iconSize: 32,
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset('assets/profile.png'),
        ),
      ],
    );
  }
}
