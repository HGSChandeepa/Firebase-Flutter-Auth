import 'package:authfire/pages/wrapper.dart';
import 'package:authfire/services/auth_service.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  //ge the user id
  final String userId = AuthService().getCurrentUser()?.uid ?? 'Unknown';

  //sign out
  void _signOut(BuildContext context) {
    AuthService().signOut();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const Wrapper()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Main Page'),
            const Text('You are now signed in'),
            const SizedBox(height: 20),
            Text('User ID: ${userId}'),
            const SizedBox(
              height: 30,
            ),
            // Sign out button
            ElevatedButton(
              onPressed: () {
                _signOut(context);
              },
              child: const Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
