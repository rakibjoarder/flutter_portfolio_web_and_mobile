import 'package:flutter/material.dart';

//This class is for page navigation
class NavigationService {

  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  var currentRoutre = 'home';

  Future<dynamic> navigateTo(String routeName) {
    if(currentRoutre != routeName){
      currentRoutre =routeName;
      return navigatorKey.currentState.pushReplacementNamed(routeName);
    }
  }

  bool goBack() {
    return  Navigator.of(scaffoldKey.currentContext).pop();
  }

}