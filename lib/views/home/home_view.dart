import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_portfolio_web/views/home/home_content_desktop.dart';
import 'package:flutter_portfolio_web/views/home/home_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeContentMobile(),
      desktop: HomeContentDesktop(),
    );
  }
}

class CallToAction extends StatelessWidget {
  final String title;
  CallToAction(this.title);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title),
      tablet: CallToActionTabletDesktop(title),
    );
  }
}

class ProfilePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double size =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 200
              : 300;
      return TweenAnimationBuilder(
        duration: Duration(milliseconds: 500),
        tween: Tween<double>(begin: .7, end: 1),
        curve: Curves.easeIn,
        builder: (_, double angle, __) {
          return Opacity(
            opacity: angle,
            child: Container(
                width: angle * size,
                height: angle * size,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.cover,
                        image: new NetworkImage(
                            "https://i.ibb.co/nrzVgJx/149314526-3719543814807741-6314542980722944519-n-1.jpg")))),
          );
        },
      );
    });
  }
}

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment = TextAlign.center;
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 30
              : sizingInformation.deviceScreenType == DeviceScreenType.Tablet
                  ? 40
                  : 50;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 13
              : sizingInformation.deviceScreenType == DeviceScreenType.Tablet
                  ? 16
                  : 18;
      double containerWidth =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? MediaQuery.of(context).size.width
              : sizingInformation.deviceScreenType == DeviceScreenType.Tablet
                  ? MediaQuery.of(context).size.width / 1.2
                  : MediaQuery.of(context).size.width / 2.1;
      return Container(
        padding: EdgeInsets.all(descriptionSize),
        width: containerWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FittedBox(
              child: Text(
                'Rakib Mamun Joarder',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  height: 0.9,
                  fontSize: titleSize,
                ),
                textAlign: textAlignment,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              'UI/UX Software Developer',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: descriptionSize + 2,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Hi, I am Rakib Mamun Joarder, Computer Science & Engineering graduate. I am a software engineer with 4+ years of experience. Specialist in Mobile Application & Web Application development. I have experience in Flutter, Dart, Android, iOS, Nodejs, Svelte, SvelteKit, Tailwind Css. I try my best to satisfy my client & deliver the best quality app at the specified time. Please feel free to contact me with any questions, I'll be happy to further explain to you about my service.",
              style: TextStyle(
                fontSize: descriptionSize,
                height: 1.7,
              ),
              textAlign: textAlignment,
            )
          ],
        ),
      );
    });
  }
}
