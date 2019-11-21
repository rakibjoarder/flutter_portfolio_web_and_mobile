import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/views/workExperienceStudy/work_study_desktop.dart';
import 'package:flutter_portfolio_web/views/workExperienceStudy/work_study_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WorkExperienceStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: WorkExperienceStudyMobile(),
      desktop: WorkExperienceStudyDesktop(),
    );
  }
}