import 'package:flutter/material.dart';

void
main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'My First App',
          style: TextStyle(
            fontFamily: 'Yuyu',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[500],
      ),
      body: Center(
        child: Text(
          "This is the body of the app.",
          style: TextStyle(
            fontSize: 40.0,
            color: const Color.fromARGB(
              255,
              28,
              133,
              159,
            ),
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(
          'Click',
        ),
        backgroundColor: Colors.red[500],
      ),
    ),
  ),
);
