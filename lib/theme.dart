import 'package:app_cv/views/resume.dart';
import 'package:app_cv/views/skill.dart';
import 'package:flutter/material.dart';

ThemeData _lightTheme = ThemeData(
    accentColor: Colors.pink,
    brightness: Brightness.light,
    primaryColor: Colors.blue);

ThemeData _darkTheme = ThemeData(
    accentColor: Colors.red,
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
    buttonTheme: ButtonThemeData(buttonColor: Colors.amber));

bool _light = true;

class DarkLightTheme extends StatefulWidget {
  const DarkLightTheme({
    Key key,
  }) : super(key: key);

  @override
  _DarkLightThemeState createState() => _DarkLightThemeState();
}

class _DarkLightThemeState extends State<DarkLightTheme> {
  Icon iconTheme = Icon(Icons.nightlight_round);

  void _changeTheme() {
    setState(() {
      if (_light)
        iconTheme = Icon(Icons.wb_sunny);
      else
        iconTheme = Icon(Icons.nightlight_round);

      _light = !_light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: _light ? _lightTheme : _darkTheme,
        title: 'App CV',
        darkTheme: _darkTheme,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Curriculum Vitae'),
              actions: [
                IconButton(icon: iconTheme, onPressed: () => _changeTheme()),
              ],
            ),
            body: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                Resume(),
                GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children: <Widget>[
                    Skill("Test1", icon: Icons.sports_bar),
                    Skill("Test2", icon: Icons.wb_sunny),
                    Skill(
                      "Test3",
                      image: AssetImage("assets/flutter_logo.png"),
                    ),
                    Skill("Test4", icon: Icons.sports_bar),
                    Skill("Test4",
                        image: AssetImage("assets/xamarin_logo.png")),
                  ],
                )
              ],
            ))));
  }
}
