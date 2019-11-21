import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';



skillSetsMobile(context){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: <Widget>[
        Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                skillPercentIndicatorMobile('Flutter',.95,Colors.green),
                skillPercentIndicatorMobile('Android',.9,Colors.green),
                skillPercentIndicatorMobile('Dart',.85,Colors.green),
                skillPercentIndicatorMobile('Java',.83,Colors.green),
                skillPercentIndicatorMobile('C',.8,Colors.green),
                skillPercentIndicatorMobile('PHP',.8,Colors.green),
                skillPercentIndicatorMobile('Node.js',.7,Colors.green),
                skillPercentIndicatorMobile('Git',.8,Colors.green),
              ],
            ),
          ),
        ),
        Container(height: 20,),
        Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                skillPercentIndicatorMobile('JavaScript',.7,Colors.green),
                skillPercentIndicatorMobile('Firebase',.9,Colors.green),
                skillPercentIndicatorMobile('MySql',.82,Colors.green),
                skillPercentIndicatorMobile('Sqlite',.9,Colors.green),
                skillPercentIndicatorMobile('CSS',.87,Colors.green),
                skillPercentIndicatorMobile('HTML',.9,Colors.green),
                skillPercentIndicatorMobile('UI Design',.9,Colors.green),
                skillPercentIndicatorMobile('Illustrator',.51,Colors.green),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Padding skillPercentIndicatorMobile(title,percent,color) {
  return Padding(
    padding: EdgeInsets.all(5.0),
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Text(title,style: TextStyle(fontWeight: FontWeight.w700),maxLines: 1,),
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
            padding: EdgeInsets.only(left: 12,right: 12),
            percent: percent,
            lineHeight: 10,
            linearStrokeCap: LinearStrokeCap.roundAll,
          ),
        )
      ],
    ),
  );
}

