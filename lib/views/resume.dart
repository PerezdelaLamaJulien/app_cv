import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 190,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image(
                    image: AssetImage('assets/photocv.jpg'),
                    height: 80.0,
                    width: 80.0,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Julien Perez de la Lama",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text("Développeur mobile",
                          style: TextStyle(
                              fontStyle: FontStyle.italic, fontSize: 13)),
                      Row(
                        children: <Widget>[
                          Icon(Icons.location_on),
                          Text(
                            "Strasbourg, France",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.all(0),
                  constraints: BoxConstraints(),
                  icon: Icon(Icons.share, color: ThemeData().accentColor),
                  onPressed: () => {},
                  tooltip: "Partager",
                )
              ],
            ),
            Container(
              child: Text(
                "Passionné par les nouvelles technologies et la musique, j'ai découvert le développement d'applications mobiles et je me suis spécialisé dans ce domaine.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                    fontSize: 13),
              ),
            ),
          ],
        ));
  }
}
