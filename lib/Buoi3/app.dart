import 'package:flutter/material.dart';
import 'package:flutter_study/Buoi3/auth/login_page.dart';
import 'package:flutter_study/Buoi3/auth/edit_user.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      // home: LoginPage(),
      home: editUser(),
    );
  }
}
