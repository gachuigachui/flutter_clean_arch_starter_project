// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  static BottomNavigationBar bottomNavigationBar({required List<String> links, required List<IconData> icons, required Function(int) onTap}) {
    int i = -1;
    if (links.isEmpty || links.length != icons.length) throw "links.length != icons.length ";

   return BottomNavigationBar(
    onTap: onTap,
        items: links.map(
          (e) {
            i++;
            return BottomNavigationBarItem(
            label: e,
            icon: Icon(
              icons[i]
            ),
          );
          },
        ).toList(),
      );
  }
}
