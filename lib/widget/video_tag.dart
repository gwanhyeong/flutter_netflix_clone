import 'package:flutter/material.dart';

class VideoTag extends StatelessWidget {
  final List<String> tags;
  const VideoTag({Key? key, required this.tags}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: generateTags(),
    );
  }

  List<Widget> generateTags() {
    List<Widget> widgets = [];
    for (int i = 0; i < tags.length; i++) {
      if (i != 0) {
        widgets.add(createDivider());
      }

      widgets.add(createTagText(tags[i]));
    }

    return widgets;
  }

  Text createTagText(String name) {
    return Text(
      name,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        letterSpacing: 1.2,
      ),
    );
  }

  Icon createDivider() {
    return const Icon(
      Icons.circle_rounded,
      color: Colors.white54,
      size: 4,
    );
  }
}
