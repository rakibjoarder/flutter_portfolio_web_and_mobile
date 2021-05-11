import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/views/footer/footer_view.dart';
import 'package:flutter_portfolio_web/views/home/home_view.dart';
import 'package:flutter_portfolio_web/views/projects/project_view.dart';
import 'package:flutter_portfolio_web/views/skills/skills.dart';
import 'package:flutter_portfolio_web/views/workExperienceStudy/work_study.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          ProfilePicture(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: AboutMe(),
          ),
          CallToAction('Resume'),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Skills(),
          ),
          WorkExperienceStudy(),
          ProjectView(),
          Footer(),
        ],
      ),
    );
  }
}

class CallToActionMobile extends StatelessWidget {
  final String title;
  const CallToActionMobile(this.title);
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
      padding: EdgeInsets.symmetric(horizontal: 30),
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
      "https://drive.google.com/file/d/1DG9PHqOdcSTxamiiRFysvh-4nipYgkKs/view?usp=sharing",
      '_blank');
}
