import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/views/skills/skills_desktop.dart';
import 'package:flutter_portfolio_web/views/skills/skills_mobile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double fontsize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 14
              : sizingInformation.deviceScreenType == DeviceScreenType.tablet
                  ? 15
                  : 18;
      double iconsize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 50
              : sizingInformation.deviceScreenType == DeviceScreenType.tablet
                  ? 60
                  : 70;

      return Container(
        padding: EdgeInsets.symmetric(
            vertical: 28,
            horizontal:
                sizingInformation.deviceScreenType == DeviceScreenType.mobile
                    ? 0
                    : 100),
        color: Colors.grey.shade100,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Skills Overview',
                style: TextStyle(
                    fontSize: fontsize * 2, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 25.0,
                    horizontal: sizingInformation.deviceScreenType ==
                            DeviceScreenType.Desktop
                        ? 140
                        : 25),
                child: Text(
                  "I have more than 4 year's experience building software for clients all over the world. Below is a quick overview of my main technical skill sets and technologies i use.Want to find out more about my experience ? check out my online resume.",
                  style: TextStyle(
                    fontSize: fontsize,
                    fontWeight: FontWeight.w400,
                    height: 1.7,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 25,
              ),
              sizingInformation.deviceScreenType == DeviceScreenType.desktop
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              secondContainerItem(
                                  iconsize,
                                  fontsize,
                                  FontAwesomeIcons.tachometerAlt,
                                  'Fast',
                                  'Fast load times and lag free \n interaction, my highest priority.',
                                  Colors.deepPurple),
                              Container(
                                width: 10,
                              ),
                              secondContainerItem(
                                  iconsize,
                                  fontsize,
                                  FontAwesomeIcons.mobileAlt,
                                  'Responsive',
                                  'My layouts will work on any\n device, big or small.',
                                  Colors.black),
                              Container(
                                width: 10,
                              ),
                              secondContainerItem(
                                  iconsize,
                                  fontsize,
                                  FontAwesomeIcons.lightbulb,
                                  'Intuitive',
                                  'Strong preference for easy to \n use, intuitive UX/UI.',
                                  Colors.green),
                              Container(
                                width: 10,
                              ),
                              secondContainerItem(
                                  iconsize,
                                  fontsize,
                                  FontAwesomeIcons.rocket,
                                  'Dynamic',
                                  "Apps don't have to be static, I love \n making pages come to life.",
                                  Colors.red),
                            ],
                          ),
                          Container(
                            height: 25,
                          ),
                          skillSetsDesktop(context)
                        ],
                      ),
                    )
                  : Container(),
              sizingInformation.deviceScreenType == DeviceScreenType.desktop
                  ? Container()
                  : Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            secondContainerItem(
                                iconsize,
                                fontsize,
                                FontAwesomeIcons.tachometerAlt,
                                'Fast',
                                'Fast load times and lag free \n interaction, my highest priority.',
                                Colors.deepPurple),
                            Container(
                              width: 10,
                            ),
                            secondContainerItem(
                                iconsize,
                                fontsize,
                                FontAwesomeIcons.mobileAlt,
                                'Responsive',
                                'My layouts will work on any\n device, big or small.',
                                Colors.black),
                          ],
                        ),
                        Container(
                          height: 25,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            secondContainerItem(
                                iconsize,
                                fontsize,
                                FontAwesomeIcons.lightbulb,
                                'Intuitive',
                                'Strong preference for easy to \n use, intuitive UX/UI.',
                                Colors.green),
                            Container(
                              width: 10,
                            ),
                            secondContainerItem(
                                iconsize,
                                fontsize,
                                FontAwesomeIcons.rocket,
                                'Dynamic',
                                "Apps don't have to be static, I love \n making pages come to life.",
                                Colors.red),
                          ],
                        ),
                        Container(
                          height: 25,
                        ),
                        sizingInformation.deviceScreenType ==
                                DeviceScreenType.desktop
                            ? skillSetsDesktop(context)
                            : skillSetsMobile(context)
                      ],
                    )
            ],
          ),
        ),
      );
    });
  }

  secondContainerItem(
      double iconsize, double fontsize, icon, title, subtitle, color) {
    return TweenAnimationBuilder(
      duration: Duration(milliseconds: 500),
      tween: Tween<double>(begin: .5, end: 1),
      curve: Curves.easeIn,
      builder: (_, double angle, __) {
        return Expanded(
          child: Center(
            child: Container(
              child: Column(
                children: <Widget>[
                  Icon(
                    icon,
                    size: angle * iconsize,
                    color: color,
                  ),
                  Container(
                    height: 25,
                  ),
                  FittedBox(
                      child: Text(
                    title,
                    style: TextStyle(
                        fontSize: fontsize, fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  FittedBox(
                      child: Text(
                    subtitle,
                    style: TextStyle(
                        fontSize: fontsize - 1, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
