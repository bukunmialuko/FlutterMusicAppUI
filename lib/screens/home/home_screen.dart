import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final bool isCurrent;

  const HomeScreen({Key? key, required this.isCurrent}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
