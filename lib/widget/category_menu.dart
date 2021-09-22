import 'package:flutter/material.dart';

class CategoryMenu extends StatelessWidget {
  const CategoryMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        createMenuText('TV 프로그램'),
        createMenuText('영화'),
        Row(
          children: [
            createMenuText('카테고리'),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
          ],
        ),
      ],
    );
  }

  Text createMenuText(String name) {
    return Text(
      name,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        letterSpacing: 1.2,
      ),
    );
  }
}
