import 'package:flutter/material.dart';
import 'module/todo_list_screen.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'To Do List App',
      debugShowCheckedModeBanner: false,
      home: ToDoListScreen(),
    );
  }
}
