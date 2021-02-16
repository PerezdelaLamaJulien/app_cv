import 'package:flutter/material.dart';

//Vue pour les Expériences profesionnelles et formations
class Experience {
  Experience({this.title, this.company, this.time});
  final String title;
  final String company;
  final String time;
}

class ExperienceView extends StatelessWidget {
  ExperienceView({this.title, this.company, this.time});
  final String title;
  final String company;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        padding: EdgeInsets.only(left: 5),
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                CustomPaint(
                  size: Size(20, 0),
                  painter: CirclePainter(),
                ),
                CustomPaint(
                  size: Size(20, 100),
                  painter: LinePainter(),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(title),
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                  Expanded(child: Text(company)),
                  Text(title),
                ],
              ),
            ),
          ],
        ));
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(0, 10), 5, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2
      ..style = PaintingStyle.fill;
    //a circle
    canvas.drawLine(Offset(0, 30), Offset(0, 100), paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
