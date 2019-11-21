import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_portfolio_web/views/footer/footer_desktop.dart';
import 'package:flutter_portfolio_web/views/footer/footer_mobile.dart';
import 'package:flutter_portfolio_web/views/home/home_content_desktop.dart';
import 'package:flutter_portfolio_web/views/home/home_content_mobile.dart';
import 'package:flutter_portfolio_web/views/skills/skills_desktop.dart';
import 'package:flutter_portfolio_web/views/skills/skills_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:percent_indicator/percent_indicator.dart';
class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: FooterContentMobile(),
      desktop:FooterContentDesktop(),
    );
  }
}

