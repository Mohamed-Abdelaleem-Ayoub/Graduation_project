import 'package:flutter/material.dart';
import 'package:graduation_project/constans.dart';

class BooksReadingPage extends StatelessWidget {
  static String id = 'BooksReadingPage';
  const BooksReadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Reading',
          style: TextStyle(
            fontFamily: kFontFamily,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
      ),
      body: const Text(
        'mjjhgfhtrdhrdthiifijfieghijzxfjkhfjdkjiefueiufhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkklllllllllllllllllllllllllllllllllllllllllllllllllddddddddddddddddddddddddddddddddddddddddddddddddddddlllllllllllllllllllllllllllllllllllllllllll;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;dsdjajeijwjiewruyulsfjdhflhtluyrlu',
      ),
    );
  }
}
