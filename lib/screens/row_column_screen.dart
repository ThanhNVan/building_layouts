import 'package:flutter/material.dart';

import '../shared/menu_drawer.dart';

class RowColumnScreen extends StatelessWidget {
  const RowColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData.dark();
    return MaterialApp(
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
            secondary: Colors.teal,
            brightness: Brightness.dark,
          ),
          primaryColor: Colors.teal,
          textTheme: const TextTheme(
              bodyText2: TextStyle(
            fontSize: 24,
            fontStyle: FontStyle.italic,
          ))),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Row And Column in Flutter'),
          ),
          drawer: MenuDrawer(),
          body: Home()),
    );
  }
}

List<Widget> createSquare(int num) {
  int i = 0;
  List colors = [
    Colors.blue,
    Colors.cyan,
    Colors.teal,
    Colors.lightGreen,
    Colors.red,
    Colors.purple
  ];
  List<Widget> squares = [];
  while (i < num) {
    Container square = Container(
      color: colors[i],
      width: 60,
      height: 60,
      child: Text(i.toString()),
    );
    i++;
    squares.add(square);
  }
  return squares;
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(children: [
        Container(
          width: sizeX,
          height: sizeY / 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: createSquare(5),
          ),
        ),
        Container(
          width: sizeX / 3 * 2,
          height: sizeY / 2,
          child: Column(
            verticalDirection: VerticalDirection.up,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: createSquare(5),
          ),
        ),
      ]),
    );
  }
}
