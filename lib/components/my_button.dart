import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  const MyButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[900], borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(25.0),
      child: Center(
          child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      )),
    );
  }
}
