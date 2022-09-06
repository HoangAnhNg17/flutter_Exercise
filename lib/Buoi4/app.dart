import 'package:flutter/material.dart';
import 'package:flutter_study/Buoi4/auth/notification.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Momo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: NotiPage(),
    );
  }
}
