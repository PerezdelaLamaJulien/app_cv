import 'package:flutter/material.dart';

//Vue pour les compétences
class Skill {
  Skill(this.text, {this.icon, this.image});
  final String text;
  final IconData icon;
  final ImageProvider<Object> image;
}

class SkillView extends StatelessWidget {
  SkillView(this.text, {this.icon, this.image});
  final String text;
  final IconData icon;
  final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return Container(
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
