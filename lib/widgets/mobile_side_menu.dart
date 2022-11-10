import 'package:flutter/material.dart';
import 'package:place_space/data/menu_items.dart';

class MobileSideMenu extends StatelessWidget {
  const MobileSideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> menuList = menuItems;

    return ListView.builder(
      itemCount: menuList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(0),
          child: ListTile(
            title: Text(
              menuList[index],
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
