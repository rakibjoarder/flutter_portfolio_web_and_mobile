import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/routing/route_names.dart';
import 'package:flutter_portfolio_web/views/about.dart';
import 'package:flutter_portfolio_web/views/apps_view.dart';
import 'package:flutter_portfolio_web/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case AppsRoute:
      return _getPageRoute(AppView());
    default:
  }
}

PageRoute _getPageRoute(Widget child) {
//  return MaterialPageRoute(builder: (context)=>child);
  //trying to give a animation
  return _fadeRoute(child: child);
}


class _fadeRoute extends PageRouteBuilder{
  final Widget child;
  _fadeRoute({this.child}): super(
      pageBuilder:(
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          ) => child,
      transitionsBuilder : (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
          ) => FadeTransition(
        opacity: animation,
        child: child,
      )
  );
}
