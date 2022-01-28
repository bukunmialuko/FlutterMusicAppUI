import 'package:flutter/material.dart';

class BookMarkScreen extends StatefulWidget {
  final bool isCurrent;

  const BookMarkScreen({Key? key, required this.isCurrent}) : super(key: key);

  @override
  _BookMarkScreenState createState() => _BookMarkScreenState();
}

class _BookMarkScreenState extends State<BookMarkScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
