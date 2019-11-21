import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:timeline_list/timeline_model.dart';
import 'package:timeline_list/timeline.dart';
class WorkExperienceStudyMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200.withOpacity(.9),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          Column(
            children: <Widget>[
              Text('WORK EXPERIENCE',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width-80,
                child: Center(child: Timeline(children:  [
                  timelineItem('Software Engineer','Cloudware Systems','08/2017 - 11/2018'),
                  timelineItem('Software Engineer','Fiverr','09/2018 - Present'),
                ], position: TimelinePosition.Left),),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('EDUCATION',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width-80,
                child:Timeline(children:  [
                  timelineItem('B.Sc. in Cse','Ahsanullah University of Science & Technology','2013 - 2017'),
                  timelineItem('HSC','Govt. Majid Memorial City College, Khulna','2012'),
                  timelineItem('SSC','Khulna Zilla School, Khulna, Khulna','2010'),
                ], position: TimelinePosition.Left),
              ),
            ],
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
            contentPadding: EdgeInsets.symmetric(vertical: 10),
            title: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            subtitle:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 2,),
                Text(subtitle,style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black87,fontSize: 15),),
                SizedBox(height: 2,),
                Text(date,style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black87,fontSize: 15),),
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

