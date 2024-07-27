import 'package:authfire/pages/auth/login.dart';
import 'package:authfire/pages/main_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // Check the connection state and user state
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While waiting for authentication status
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          // User is signed in
          return MainPage();
        } else {
          // User is not signed in
          return const LoginPage();
        }
      },
    );
  }
}
