// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ButtonReuse extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  const ButtonReuse({super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 45,
        width: 200,
        decoration: BoxDecoration(
          color: Color(0xff2CAEE2),
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
