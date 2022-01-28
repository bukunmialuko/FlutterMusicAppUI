import 'package:flutter/material.dart';

class PlayListScreen extends StatefulWidget {
  final bool isCurrent;

  const PlayListScreen({Key? key, required this.isCurrent}) : super(key: key);

  @override
  _PlayListScreenState createState() => _PlayListScreenState();
}

class _PlayListScreenState extends State<PlayListScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
