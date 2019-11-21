import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/views/projects/project_contect_desktop.dart';
import 'package:flutter_portfolio_web/views/projects/project_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';


class ProjectView extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return ScreenTypeLayout(
    mobile: ProjectViewMobile(),
    desktop: ProjectViewDesktop(),
  );
}
}

