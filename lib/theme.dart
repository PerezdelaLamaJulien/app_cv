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
          body: Center(
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: "Enter Name"),
                ),
                RaisedButton(child: Text("Click Me"), onPressed: () {}),
                Switch(value: _light, onChanged: (state) {}),
              ],
            ),
          ),
        ));
  }
}
