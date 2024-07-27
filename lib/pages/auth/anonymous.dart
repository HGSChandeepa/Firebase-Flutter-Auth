import 'package:authfire/pages/main_page.dart';
import 'package:authfire/services/auth_service.dart';
import 'package:flutter/material.dart';

class AuthAnonymousPage extends StatelessWidget {
  const AuthAnonymousPage({super.key});

  //Sign in anonymously
  void _signInAnonymously(BuildContext context) async {
    try {
      await AuthService().signInAnonymously();
      //navigate to main page
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MainPage(),
        ),
      );
    } catch (e) {
      print('Error signing in anonymously: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Anonymous Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _signInAnonymously(context),
          child: const Text('Sign in Anonymously'),
        ),
      ),
    );
  }
}
