import 'package:building_layouts/screens/areaCalculator_screen.dart';
import 'package:flutter/material.dart';

import '../screens/intro_creen.dart';
import '../screens/row_column_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTitles = [
      'Home',
      'Area Calculator',
      'Row And Column'
    ];

    List<Widget> menuItems = [];
    menuItems.add(DrawerHeader(
      decoration: BoxDecoration(color: Colors.blueGrey),
      child: Text('Layout with Flutter',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 28,
          )),
    ));

    menuTitles.forEach((String element) {
      Widget screen = Container();
      menuItems.add(
        ListTile(
            title: Text(
              element,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              switch (element) {
                case 'Home':
                  screen = IntroScreen();
                  break;
                case 'Area Calculator':
                  screen = AreaScreen();
                  break;
                case 'Row And Column':
                  screen = RowColumnScreen();
                  break;
                case 'Training':
                  //screen = SessionScreen();
                  break;
                default:
              }
              Navigator.of(context).pop();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => screen));
            }),
      );
    });

    return menuItems;
  }
}
