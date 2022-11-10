import 'package:flutter/material.dart';
import 'package:place_space/data/menu_items.dart';

class DesktopSideMenu extends StatelessWidget {
  const DesktopSideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> menuItems = sideDrawerMenuDesktop;

    return ListView.builder(
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(0),
          child: ListTile(
            title: Text(
              menuItems[index],
            ),
            onTap: () {
              Navigator.of(context);
            },
          ),
        );
      },
    );
  }
}
