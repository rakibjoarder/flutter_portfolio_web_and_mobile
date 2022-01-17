import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/locator.dart';
import 'package:flutter_portfolio_web/routing/route_names.dart';
import 'package:flutter_portfolio_web/routing/routes.dart';
import 'package:flutter_portfolio_web/services/navigation_service.dart';
import 'package:flutter_portfolio_web/views/navigation_bar.dart' as nav;
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rakib Mamun Joarder',
      home: LayoutTemplate(),
    );
  }
}

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        key: locator<NavigationService>().scaffoldKey,
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? nav.NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            nav.NavigationBar(),
            Expanded(
              child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
