import 'package:building_layouts/shared/menu_drawer.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

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
        textTheme: TextTheme(
            bodyText2: TextStyle(
          fontSize: 24,
          fontStyle: FontStyle.italic,
          //backgroundColor: Color.fromARGB(255, 29, 31, 31),
        )),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Building layouts with Flutter'),
        ),
        drawer: MenuDrawer(),
        body: Column(children: [
          Container(
            margin: EdgeInsets.all(20),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.cyanAccent,
                gradient: LinearGradient(
                    colors: [Colors.transparent, Colors.cyanAccent]),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage('images/voz-cuoi.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.cyanAccent,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.cyanAccent]),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage('images/ohno.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.cyanAccent,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.cyanAccent]),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: NetworkImage('http://bit.ly/flutter_tiger'),
                  fit: BoxFit.cover,
                )),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('You rang?');
          },
          //backgroundColor: Colors.amber[100],
          child: Icon(Icons.access_time_filled_outlined),
        ),
        persistentFooterButtons: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_comment_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add_alarm_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add_location)),
        ],
      ),
    );
  }
}
