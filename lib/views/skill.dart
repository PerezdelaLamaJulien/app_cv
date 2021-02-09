import 'package:flutter/material.dart';

class Skill extends StatelessWidget {
  Skill(this.text, {this.icon, this.image});
  final String text;
  final IconData icon;
  final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          if (icon != null)
            Icon(
              icon,
              size: 50,
            )
          else
            Image(
              image: image,
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
          Text(text),
        ],
      ),
    );
  }
}