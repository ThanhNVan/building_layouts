import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          backgroundColor: Colors.teal[50],
        )),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Building layouts with Flutter'),
        ),
        body: Center(
          child: Text(
            'Hello Flutter Layouts',
          ),
        ),
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
