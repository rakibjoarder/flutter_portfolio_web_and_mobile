import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/locator.dart';
import 'package:flutter_portfolio_web/services/navigation_service.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_portfolio_web/routing/route_names.dart';
class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarDesktop(),
    );
  }
}

class NavigationBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              locator<NavigationService>().scaffoldKey.currentState.openDrawer();
            },
          ),
          Text('RMJ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}

class NavigationBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('RMJ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Home', HomeRoute),
              SizedBox(
                width: 40,
              ),
              NavBarItem('Apps', AppsRoute),
              SizedBox(
                width: 40,
              ),
//              NavBarItem('About', AboutRoute),
//              SizedBox(
//                width: 40,
//              ),
              Chip(
                label: Text('+8801778743187',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                backgroundColor: Colors.green.shade800,
              )
            ],
          )
        ],
      ),
    );
  }
}

NavBarLogo(){
  return FlutterLogo();
}

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // DON'T EVER USE A SERVICE DIRECTLY IN THE UI TO CHANGE ANY KIND OF STATE
        // SERVICES SHOULD ONLY BE USED FROM A VIEWMODEL
        if(locator<NavigationService>().scaffoldKey.currentState.isDrawerOpen){
          locator<NavigationService>().goBack();
        }
        locator<NavigationService>().navigateTo(navigationPath);

      },
      child: Text(
        title,
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
      ),
    );
  }
}


class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;
  const DrawerItem(this.title, this.icon, this.navigationPath);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          SizedBox(width: 30),
          NavBarItem(title, navigationPath),
        ],
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('Home', Icons.home,HomeRoute),
          DrawerItem('Apps', Icons.apps,AppsRoute),
//          DrawerItem('About', Icons.help,AboutRoute),
        ],
      ),
    );
  }
}



class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.grey.shade800,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Rakib Mamun Joarder',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          Text(
            '+8801778743187',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}

