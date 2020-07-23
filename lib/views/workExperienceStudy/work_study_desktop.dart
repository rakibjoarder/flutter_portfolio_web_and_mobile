import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class WorkExperienceStudyDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200.withOpacity(.9),
      padding: EdgeInsets.symmetric(horizontal: 120),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                SizedBox(height: 28,),
                Text('WORK EXPERIENCE',style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Container(
                  height: 420,
                  padding: EdgeInsets.only(left: 50),
                  child: Center(child: Timeline(children: [
                    timelineItem('Software Engineer (Flutter) ','Nagad','01/2020 - Present'),
                    timelineItem('Software Engineer','Cloudware Systems','08/2017 - 11/2018'),
                    timelineItem('Flutter Developer','Fiverr','09/2018 - Present'),
                  ], position: TimelinePosition.Left),),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                SizedBox(height: 28,),
                Text('EDUCATION',style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Container(
                  height: 420,
                  padding: EdgeInsets.only(left: 20),
                  child:Timeline(children:  [
                    timelineItem('B.Sc. in Cse','Ahsanullah University of Science & Technology','2013 - 2017'),
                    timelineItem('HSC','Govt. Majid Memorial City College, Khulna','2012'),
                    timelineItem('SSC','Khulna Zilla School, Khulna, Khulna','2010'),
                  ], position: TimelinePosition.Left),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  TimelineModel timelineItem(title,subtitle,date) {
    return TimelineModel(
      Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 20),
            title: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            subtitle:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 2,),
                Text(subtitle,style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black87,fontSize: 19),),
                SizedBox(height: 2,),
                Text(date,style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black87,fontSize: 19),),
              ],
            ),
          ),
        ],
      ),
      isFirst: true,
      isLast: true,

      position: TimelineItemPosition.random,
      iconBackground: Colors.green.shade700,
    );
  }
}

