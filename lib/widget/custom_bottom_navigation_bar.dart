import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final List items;
  const CustomBottomNavigationBar({Key? key, required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: generateItems(),
      elevation: 0.0,
      backgroundColor: const Color(0xff121212),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey[600],
    );
  }

  List<BottomNavigationBarItem> generateItems() {
    return items.map((item) {
      return BottomNavigationBarItem(
        label: item['name'],
        icon: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 0),
              child: Icon(item['icon']),
            ),
            if (item['badge'])
              Positioned(
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      );
    }).toList();
  }
}
