import 'package:flutter/material.dart';
import 'package:app_cv/views/experience.dart';
import 'package:app_cv/views/resume.dart';
import 'package:app_cv/views/skill.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Experience> experiences = <Experience>[
    Experience(
      title: "Développeur mobile",
      company: "Davidson Est",
      time: "Novemmbre 2018 - Février 2021",
    ),
    Experience(
      title: "Consultant",
      company: "Technology & Strategy",
      time: "Novemmbre 2018 - Février 2021",
    ),
  ];

  final List<Skill> skills = <Skill>[
    Skill("Test1", icon: Icons.sports_bar),
    Skill("Test2", icon: Icons.wb_sunny),
    Skill("Test3", image: AssetImage("assets/flutter_logo.png")),
    Skill("Test4", icon: Icons.sports_bar),
    Skill("Test5", image: AssetImage("assets/xamarin_logo.png")),
  ];

  final EdgeInsets paddingSide =
      const EdgeInsets.only(left: 20, right: 20, bottom: 20);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App CV',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Curriculum Vitae'),
            ),
            body: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                Resume(),
                GridView.builder(
                  primary: false,
                  padding: paddingSide,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 100,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: skills.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SkillView(skills[index].text,
                        image: skills[index].image, icon: skills[index].icon);
                  },
                ),
                Container(
                  padding: paddingSide,
                  child: Column(
                    children: <Widget>[
                      ...experiences.map((item) {
                        return ExperienceView(
                            title: item.title,
                            company: item.company,
                            time: item.time);
                      }).toList(),
                    ],
                  ),
                ),
              ],
            ))));
  }
}
