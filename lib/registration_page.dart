import 'package:flutter/material.dart';
import 'home_page.dart'; // Import the home page

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Example registration function, replace with your actual registration logic
    void _register() {
      // Replace this with your actual registration logic
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _register,
          child: Text('Register'),
        ),
      ),
    );
  }
}

