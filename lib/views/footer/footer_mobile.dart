import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_portfolio_web/views/home/home_content_desktop.dart';
import 'package:flutter_portfolio_web/views/home/home_content_mobile.dart';
import 'package:flutter_portfolio_web/views/skills/skills_desktop.dart';
import 'package:flutter_portfolio_web/views/skills/skills_mobile.dart';
import 'package:flutter_portfolio_web/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:percent_indicator/percent_indicator.dart';
class FooterContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context,sizingInfo){
        double fontsize = 15 ;
        double iconsize = 25 ;
        return Container(
          color: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  SizedBox(height: 20,),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical : 7.0),
                    child: Text('Follow me on',style: TextStyle(color: Colors.white, fontSize: fontsize),),
                  ),
                  Container(
                    child: Row(
                       mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        buildFloatingActionButton('https://www.linkedin.com/in/rakib-mamun-joarder/',FontAwesomeIcons.linkedinIn,),
                        buildFloatingActionButton('https://github.com/rakibjoarder',FontAwesomeIcons.github),
                        buildFloatingActionButton('https://twitter.com/rakibjoarder1',FontAwesomeIcons.twitter),
                        buildFloatingActionButton('https://www.youtube.com/channel/UC3OdDpNGGMY6b4-8Z3DdEFw',FontAwesomeIcons.youtube),
                        buildFloatingActionButton('https://www.facebook.com/rakib.joarder',FontAwesomeIcons.facebook),
                        buildFloatingActionButton('https://www.instagram.com/rakibjoarder/',FontAwesomeIcons.instagram),

                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              leftcolumnItem(fontsize,'Dhaka, Bangladesh',Icons.location_on,iconsize,context),
              SizedBox(height: 20,),
            ],
          ),
        );
      },
    );
  }

  Padding buildFloatingActionButton(link,icon) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Material(
        color: Colors.black,
        child: IconButton(
          icon: Icon(icon,color: Colors.white,size: 28,),
          onPressed: () {
            launchURL(link);
          },
        ),
      ),
    );
  }

  Padding leftcolumnItem(double fontsize,text,icon,iconsize,context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(icon, color: Colors.orange,size: iconsize,),
          SizedBox(width: 5,),
          FittedBox(
            child: Text(text,
              style: TextStyle(color: Colors.white, fontSize: fontsize),),
          ),
        ],
      ),
    );
  }
}
