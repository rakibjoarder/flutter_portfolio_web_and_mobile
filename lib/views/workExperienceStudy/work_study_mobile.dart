import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/utils/screen_aware_size.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class WorkExperienceStudyMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200.withOpacity(.9),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Column(
            children: <Widget>[
              Text(
                'WORK EXPERIENCE',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Container(
                height: screenAwareSize(420, context),
                width: MediaQuery.of(context).size.width - 80,
                child: Center(
                  child: Timeline(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        timelineItem('UI/UX Software Developer ',
                            'Everglade Solutions, Inc', '12/2021 - Present'),
                        timelineItem('Software Engineer (Flutter) ', 'Dnet',
                            '06/2021 - 11/2021'),
                        timelineItem('Software Engineer (Flutter) ', 'Swap',
                            '01/2020 - 08/2020'),
                        timelineItem('Freelance Flutter Developer',
                            'Google Play Apps', '08/2018 - Present'),
                        timelineItem('Freelance Android Developer',
                            'Google Play Apps', '09/2017 - 07/2018'),
                        timelineItem('Software Engineer', 'Cloudware Systems',
                            '08/2017 - 11/2018'),
                      ],
                      position: TimelinePosition.Left),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                'EDUCATION',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Container(
                height: screenAwareSize(220, context),
                width: MediaQuery.of(context).size.width - 80,
                child: Timeline(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      timelineItem(
                          'B.Sc. in Cse',
                          'Ahsanullah University of Science & Technology',
                          '2013 - 2017'),
                      timelineItem('HSC',
                          'Govt. Majid Memorial City College, Khulna', '2012'),
                      timelineItem(
                          'SSC', 'Khulna Zilla School, Khulna, Khulna', '2010'),
                    ],
                    position: TimelinePosition.Left),
              ),
            ],
          ),
        ],
      ),
    );
  }

  TimelineModel timelineItem(title, subtitle, date) {
    return TimelineModel(
      Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 10),
            title: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 2,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                      fontSize: 13),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  date,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                      fontSize: 13),
                ),
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
