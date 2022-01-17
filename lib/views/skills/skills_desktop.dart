import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

skillSetsDesktop(context) {
  return Padding(
    padding: const EdgeInsets.all(0.0),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  skillPercentIndicatorDesktop('Flutter', .95, Colors.green),
                  skillPercentIndicatorDesktop('Android', .9, Colors.green),
                  skillPercentIndicatorDesktop('Dart', .85, Colors.green),
                  skillPercentIndicatorDesktop('Java', .83, Colors.green),
                  skillPercentIndicatorDesktop('C', .8, Colors.green),
                  skillPercentIndicatorDesktop('PHP', .8, Colors.green),
                  skillPercentIndicatorDesktop('Node.js', .7, Colors.green),
                  skillPercentIndicatorDesktop('Git', .8, Colors.green),
                ],
              ),
            ),
          ),
          flex: 1,
        ),
        Container(
          width: 40,
        ),
        Expanded(
          flex: 1,
          child: Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  skillPercentIndicatorDesktop('JavaScript', .7, Colors.green),
                  skillPercentIndicatorDesktop('Firebase', .9, Colors.green),
                  skillPercentIndicatorDesktop('MySql', .82, Colors.green),
                  skillPercentIndicatorDesktop('Sqlite', .9, Colors.green),
                  skillPercentIndicatorDesktop('Svelte', .87, Colors.green),
                  skillPercentIndicatorDesktop(
                      'Tailwind CSS', .9, Colors.green),
                  skillPercentIndicatorDesktop('UI Design', .9, Colors.green),
                  skillPercentIndicatorDesktop(
                      'Illustrator', .51, Colors.green),
                ],
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Padding skillPercentIndicatorDesktop(title, percent, color) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10.0),
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w700),
            maxLines: 1,
          ),
        ),
        Expanded(
          flex: 8,
          child: LinearPercentIndicator(
            animation: true,
            addAutomaticKeepAlive: true,
            linearGradient: LinearGradient(
              colors: [color.shade600, color.shade900],
            ),
            animationDuration: 1000,
            padding: EdgeInsets.symmetric(horizontal: 10),
            percent: percent,
            lineHeight: 15,
            linearStrokeCap: LinearStrokeCap.roundAll,
          ),
        )
      ],
    ),
  );
}
