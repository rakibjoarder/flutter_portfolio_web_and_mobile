import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/locator.dart';
import 'package:flutter_portfolio_web/services/navigation_service.dart';
import 'package:flutter_portfolio_web/widgets/widgets.dart';

//https://apps.apple.com/us/app/swap-bd/id1499768718
class ProjectViewDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 28.0, top: 28),
                  child: Text(
                    'My Published Apps',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ),
                AppsRow(
                  tag: 'Swap',
                  playstoreLink:
                      'https://play.google.com/store/apps/details?id=com.swap.swap_ecommerce',
                  buttonText: 'GET IT ON GOOGLE PLAY',
                  tag1: 'EzzyMart',
                  link1:
                      'https://play.google.com/store/apps/details?id=com.droidappbd.ebazar',
                  buttonText1: 'GET IT ON GOOGLE PLAY',
                  tag2: 'Big Bazaar',
                  link2:
                      'https://play.google.com/store/apps/details?id=com.grocery.bigbazaar',
                  buttonText2: 'GET IT ON GOOGLE PLAY',
                  image:
                      'https://lh3.googleusercontent.com/5CXhhqoJyX3YirLSzQI59CL1ln9TP7ZIkJdKB9ZfR7atqBJyvbRxO2VkILXABQiOnEQ=s180',
                  image1: 'https://i.ibb.co/5GvBL1K/playstoreicon.png',
                  image2:
                      'https://lh3.googleusercontent.com/O6mIbOWvVkVT7k9jDjiDD_t4oVjonVPyi4x5siahggNZgNbxdCXxYkB82qdV-yE4eFTq=s180',
                  tag3: 'EzzyMart Partner',
                  link3:
                      'https://play.google.com/store/apps/details?id=com.droidappbd.ebazar_partner',
                  buttonText3: 'GET IT ON GOOGLE PLAY',
                  image3: 'https://i.ibb.co/tpgNjYq/ezzymartapplogo.png',
                ),
                AppsRow(
                  tag: 'DroidPass Password Manager',
                  playstoreLink:
                      'https://play.google.com/store/apps/details?id=com.passwordmanager.droidpass&hl=bn',
                  buttonText: 'GET IT ON GOOGLE PLAY',
                  tag1: 'Password Manager',
                  link1:
                      'https://play.google.com/store/apps/details?id=com.aust.rakib.passwordmanager',
                  buttonText1: 'GET IT ON GOOGLE PLAY',
                  tag2: 'Expense Manager',
                  link2:
                      'https://play.google.com/store/apps/details?id=com.aust.rakib.expensemanager',
                  buttonText2: 'GET IT ON GOOGLE PLAY',
                  image:
                      'https://lh3.googleusercontent.com/S5x2VbQzTkI_SIKcextZjTPOXjA0Se546SRovYXbCJvILbFgJ4_EiuqRLYmc4fEt3A=s180-rw',
                  image1:
                      'https://lh3.googleusercontent.com/ELEyq77oNSv2Sc-yoMNMZKF2yy2eHoG1mZ24V7BG7qcT3pYyQ_bC6yy_ku8rSaFmT6Qj=s180-rw',
                  image2:
                      'https://lh3.googleusercontent.com/hAxx_Jl76YRPTcyRv3fLyBbHi5Ev3Wl-oPZh06ZNj6_bX_dkRMnu82Qhbf91fZRFg6o=s180-rw',
                  tag3: 'PDF Reader',
                  link3:
                      'https://play.google.com/store/apps/details?id=com.aust.rakib.pdfreader',
                  buttonText3: 'GET IT ON GOOGLE PLAY',
                  image3:
                      'https://lh3.googleusercontent.com/BZBdoPGFdmn6qDWrPBkvc7q-A43Tn1vOcqGxx03xk_k43dQc2mBvCjRUk0q09FVh-w=s180-rw',
                ),
                AppsRow(
                  tag: 'Password Manager Pro',
                  playstoreLink:
                      'https://play.google.com/store/apps/details?id=com.aust.rakib.passwordmanager.pro',
                  buttonText: 'GET IT ON GOOGLE PLAY',
                  image:
                      'https://lh3.googleusercontent.com/wZ97qUpr72dYowIFsB7vQowaVHfu91chxZi62OyD5GFQI_gTkp37LJl9UdZZ5UVGUw=s180-rw',
                  image2:
                      'https://lh3.googleusercontent.com/MWEXrjruX7msEmTO4KxOqQq-MrVwNhLqMAS4s8boP2G-rBhhhdNyw8G3eKZ_Dyjk9d4=s180-rw',
                  tag1: 'মাহে রমজান ২০১৯',
                  link1:
                      'https://play.google.com/store/apps/details?id=com.aust.rakib.maheramadan2018',
                  buttonText1: 'GET IT ON GOOGLE PLAY',
                  tag2: 'My Wallet',
                  link2:
                      'https://play.google.com/store/apps/details?id=com.aust.mywallet',
                  buttonText2: 'GET IT ON GOOGLE ',
                  image1:
                      'https://lh3.googleusercontent.com/5ctdLZQ7EjM_QiY-rm1ibxy_I_ygaujl9CcDyAVVuyZ8ad3qa4ZJEBWyUgc50n3kUsma=s180-rw',
                  image3:
                      'https://lh3.googleusercontent.com/YTAkoYcPQk4WuqCIB45BF5hlFEugQSGISp2dmyosojsL9b7y-UIdoTuR3TaS2O7Sjg=s180-rw',
                  tag3: 'HD Wallpapers',
                  link3:
                      'https://play.google.com/store/apps/details?id=com.rakib.hdwallpapers',
                  buttonText3: 'GET IT ON GOOGLE PLAY',
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 28.0, top: 28),
                  child: Text(
                    "Client\'s Apps",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ),
                AppsRow(
                  tag: 'Creative Problem Solver',
                  playstoreLink:
                      'https://play.google.com/store/apps/details?id=com.appcreativeps.creative_problem_solver',
                  buttonText: 'GET IT ON GOOGLE PLAY',
                  image:
                      'https://lh3.googleusercontent.com/OUxXaWUmPYFiS5GLagRzkggz2ER11hKYswqFlJpMV4o5LcWbmh65RgYCYAKr0AgmLbY=s180-rw',
                  tag1: 'Japps - Giapponesi All You Can Eat',
                  link1:
                      'https://play.google.com/store/apps/details?id=com.marcoaddante.japps',
                  buttonText1: 'GET IT ON GOOGLE PLAY',
                  tag2: 'NetLink',
                  link2:
                      'https://play.google.com/store/apps/details?id=com.netlink.exchange',
                  buttonText2: 'GET IT ON GOOGLE ',
                  image1:
                      'https://lh3.googleusercontent.com/sbnzM50Bcl3qxE9wTxakXPLYEsgV72MC4yw7QGaLeGx48SnZM7JByVpc4hNG03BNzg=s180-rw',
                  image2:
                      'https://lh3.googleusercontent.com/Zwh6Xn1BVhKbx9YVslRDv2ptxmdLS354VG77yEjUrpEM7MRnBBQcCZiXdofMbyFtCV3H=s180-rw',
                ),
                AppsRow(
                  tag: 'On-Site Soccer Analysis',
                  playstoreLink:
                      'https://play.google.com/store/apps/details?id=com.osmannoah.on_site_soccer_analysis',
                  buttonText: 'GET IT ON GOOGLE PLAY',
                  image:
                      'https://lh3.googleusercontent.com/IXvB4AVeU_ot-UuPD5_05W3RlZ2cRszoHs449wivdXgGzESoVQ6Q8Sw7ue8LriLvcRk=s180-rw',
                  tag3: 'হাতের মুঠোয় কাঁচা বাজার',
                  link3:
                      'https://play.google.com/store/apps/details?id=com.zamzamit.zzbazarbasic',
                  buttonText3: 'GET IT ON GOOGLE PLAY',
                  image3:
                      'https://lh3.googleusercontent.com/Ae_I-_9c-xiGJ3YuO2Hm-Ey4kzu-f8yRdhayATq9JW5PZQ8veu_kIMS6H9HJ1_N5eRw=s180-rw',
                ),
                SizedBox(
                  height: 28,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 40),
            color: Colors.grey.shade200,
            child: Column(
              children: <Widget>[
                Text(
                  'You can also check my Apps in Store',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 15,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      child: Text(
                        'App Store',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      color: Colors.green.shade500,
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                      ),
                      onPressed: () {
                        launchURL('https://apps.apple.com/us/app/id1490618521');
                      },
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    RaisedButton(
                      child: Text(
                        'Google Play',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      color: Colors.green.shade500,
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                      ),
                      onPressed: () {
                        launchURL(
                            'https://play.google.com/store/apps/dev?id=8748058035662432930');
                      },
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

AppsRow(
    {tag,
    playstoreLink,
    buttonText,
    tag1,
    link1,
    buttonText1,
    tag2,
    link2,
    buttonText2,
    image,
    image1,
    image2,
    tag3,
    link3,
    buttonText3,
    image3}) {
  return Row(
    children: <Widget>[
      tag != null
          ? AppsItem(
              tag,
              buttonText,
              playstoreLink,
              image,
              tag == 'DroidPass Password Manager'
                  ? 'https://apps.apple.com/us/app/id1490618521'
                  : tag == 'Swap'
                      ? 'https://apps.apple.com/us/app/swap-bd/id1499768718'
                      : '')
          : Container(),
      tag1 != null
          ? AppsItem(
              tag1,
              buttonText1,
              link1,
              image1,
              tag1 == 'EzzyMart'
                  ? 'https://apps.apple.com/tt/app/ebazar-online-shopping-app/id1513815169'
                  : '')
          : Container(),
      tag2 != null
          ? AppsItem(
              tag2,
              buttonText2,
              link2,
              image2,
              tag2 == 'Big Bazaar'
                  ? 'https://apps.apple.com/cn/app/big-bazaar/id1523011912?ign-mpt=uo%3D2'
                  : '')
          : Container(),
      tag3 != null
          ? AppsItem(
              tag3,
              buttonText3,
              link3,
              image3,
              tag3 == 'EzzyMart Partner'
                  ? "https://apps.apple.com/tt/app/ezzymart-partner/id1528605189"
                  : '')
          : Container()
    ],
  );
}

Expanded AppsItem(tag, buttonText, playstoreLink, image, appStoreLink) {
  return Expanded(
    flex: 1,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          showAlertDialog(
              locator<NavigationService>().scaffoldKey.currentContext,
              tag,
              buttonText,
              playstoreLink,
              image,
              appStoreLink);
        },
        child: Column(
          children: <Widget>[
            Hero(
              tag: tag,
              child: Image.network(
                image,
                width: 150,
                height: 150,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              tag,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
            )
          ],
        ),
      ),
    ),
  );
}

showAlertDialog(
    BuildContext context, tag, buttonText, playStoreLink, image, appstoreLink) {
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 0,
      content: Hero(
        tag: tag,
        child: Container(
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FittedBox(
                  child: Text(
                tag,
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              )),
              Container(
                height: 20,
              ),
              Image.network(
                image,
                fit: BoxFit.cover,
                width: 200,
              ),
              Container(
                height: 30,
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: FittedBox(
                    child: Text(
                  buttonText,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                )),
                color: Colors.green.shade700,
                onPressed: () {
                  launchURL(playStoreLink);
                },
              ),
              appstoreLink != ''
                  ? RaisedButton(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: FittedBox(
                          child: Text(
                        '   GET IT ON APP STORE   ',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      )),
                      color: Colors.green.shade700,
                      onPressed: () {
                        launchURL(appstoreLink);
                      },
                    )
                  : Container(
                      height: 0,
                    )
            ],
          ),
        ),
      ));

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
