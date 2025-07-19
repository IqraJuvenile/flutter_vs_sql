import 'package:flutter_vs_sql/Screen/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: {'Login': (_) => LoginScreen()},
      initialRoute: 'Login',
    );
  }
}
