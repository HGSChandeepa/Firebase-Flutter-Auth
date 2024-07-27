import 'package:authfire/pages/auth/anonymous.dart';
import 'package:authfire/pages/auth/register.dart';
import 'package:authfire/pages/wrapper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Wrapper(),
    );
  }
}
