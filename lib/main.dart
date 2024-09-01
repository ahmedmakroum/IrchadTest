import 'package:flutter/material.dart';
import 'login_page.dart';  // Import the login page
import 'home_page.dart';  // Import the home page

void main() {
  runApp(IrchadApp());
}

class IrchadApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Irchad App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: LoginPage(), // Start with the LoginPage
    );
  }
}
