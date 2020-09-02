import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/views/footer/footer_view.dart';
import 'package:flutter_portfolio_web/views/home/home_view.dart';
import 'package:flutter_portfolio_web/views/projects/project_view.dart';
import 'package:flutter_portfolio_web/views/skills/skills.dart';
import 'package:flutter_portfolio_web/views/workExperienceStudy/work_study.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.grey.shade200, Colors.grey.shade100],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ProfilePicture(),
                  SizedBox(
                    width: 80,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      AboutMe(),
                      SizedBox(
                        width: 60,
                      ),
                      CallToAction('Resume')
                    ],
                  ),
                ],
              ),
            ),
            Skills(),
            WorkExperienceStudy(),
            ProjectView(),
            Footer()
          ],
        ),
      ),
    );
  }
}

class CallToActionTabletDesktop extends StatelessWidget {
  final String title;
  const CallToActionTabletDesktop(this.title);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(5.0),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
      color: Colors.greenAccent.shade700,
      elevation: 1,
      onPressed: () {
        _launchURL();
      },
    );
  }
}

_launchURL() async {
  html.window.open(
      "https://drive.google.com/file/d/1Gj2_k6MNaNlRauooaRp7XmWOGgZ6FShi/view?usp=sharing",
      '_blank');
}
