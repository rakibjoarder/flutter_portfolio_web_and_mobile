import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/locator.dart';
import 'package:flutter_portfolio_web/services/navigation_service.dart';
import 'package:flutter_portfolio_web/widgets/widgets.dart';

class ProjectViewMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, top: 28),
            child: Text(
              'Published Apps',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          AppsRow(
            tag: 'DroidPass Password Manager',
            link:
                'https://play.google.com/store/apps/details?id=com.passwordmanager.droidpass&hl=bn',
            buttonText: 'GET IT ON GOOGLE PLAY',
            image: 'https://i.ibb.co/S5hZJzs/appstore-logo.png',
            tag1: 'Swap',
            link1:
                'https://play.google.com/store/apps/details?id=com.swap.swap_ecommerce',
            buttonText1: 'GET IT ON GOOGLE PLAY',
            tag2: 'EzzyMart',
            link2:
                'https://play.google.com/store/apps/details?id=com.droidappbd.ebazar',
            buttonText2: 'GET IT ON GOOGLE PLAY',
            // tag2: 'Adolescent Health',
            // link2:
            //     'https://play.google.com/store/apps/details?id=com.dnet.unicef.adolescent&hl=en&gl=US',
            // buttonText2: 'GET IT ON GOOGLE PLAY',
            // image2:
            // 'https://i.ibb.co/HdPP7r7/Screenshot-2021-08-15-at-3-08-29-PM.png',
            image1:
                'https://lh3.googleusercontent.com/5CXhhqoJyX3YirLSzQI59CL1ln9TP7ZIkJdKB9ZfR7atqBJyvbRxO2VkILXABQiOnEQ=s180',
            image2: 'https://i.ibb.co/5GvBL1K/playstoreicon.png',

            tag3: 'EzzyMart Partner',
            link3:
                'https://play.google.com/store/apps/details?id=com.droidappbd.ebazar_partner',
            buttonText3: 'GET IT ON GOOGLE PLAY',
            image3: 'https://i.ibb.co/tpgNjYq/ezzymartapplogo.png',
          ),
          AppsRow(
            tag: 'Grolister: Shopping List Maker',
            link:
                'https://apps.apple.com/us/app/grolister-shopping-list-maker/id1578112589#?platform=iphone',
            buttonText: 'GET IT ON APP STORE',
            image: 'https://i.ibb.co/Vtx7Qs2/3.png',
            tag1: 'Password Manager Pro',
            link1:
                'https://play.google.com/store/apps/details?id=com.aust.rakib.passwordmanager.pro',
            buttonText1: 'GET IT ON GOOGLE PLAY',
            image1: 'https://i.ibb.co/wzH2Jgc/applogo.png',

            tag2: 'Mahe Ramadan',
            link2:
                'https://play.google.com/store/apps/details?id=com.aust.rakib.maheramadan2018',
            buttonText2: 'GET IT ON GOOGLE PLAY',
            image2: 'https://i.ibb.co/7nhGJ5Q/Mahe-Ramzan-Logo-final.png',

            tag3: 'QR Code & Barcode scanner',
            link3:
                'https://play.google.com/store/apps/details?id=com.scanner.qrscanner.qr_barcode_scanner',
            buttonText3: 'GET IT ON GOOGLE PLAY',
            image3: 'https://i.ibb.co/PDPjpqr/Icon-App-1024x1024-1x.png',

            // tag2: 'Expense Manager',
            // link2:
            //     'https://play.google.com/store/apps/details?id=com.aust.rakib.expensemanager',
            // buttonText2: 'GET IT ON GOOGLE PLAY',

            // image1:
            //     'https://lh3.googleusercontent.com/ELEyq77oNSv2Sc-yoMNMZKF2yy2eHoG1mZ24V7BG7qcT3pYyQ_bC6yy_ku8rSaFmT6Qj=s180-rw',
            // image2:
            //     'https://lh3.googleusercontent.com/hAxx_Jl76YRPTcyRv3fLyBbHi5Ev3Wl-oPZh06ZNj6_bX_dkRMnu82Qhbf91fZRFg6o=s180-rw',
            // tag3: 'PDF Reader',
            // link3:
            //     'https://play.google.com/store/apps/details?id=com.aust.rakib.pdfreader',
            // buttonText3: 'GET IT ON GOOGLE PLAY',
            // image3:
            //     'https://lh3.googleusercontent.com/BZBdoPGFdmn6qDWrPBkvc7q-A43Tn1vOcqGxx03xk_k43dQc2mBvCjRUk0q09FVh-w=s180-rw',
          ),
          AppsRow(
              // tag: 'Password Manager Pro',
              // playstoreLink:
              //     'https://play.google.com/store/apps/details?id=com.aust.rakib.passwordmanager.pro',
              // buttonText: 'GET IT ON GOOGLE PLAY',
              // image:
              //     'https://lh3.googleusercontent.com/wZ97qUpr72dYowIFsB7vQowaVHfu91chxZi62OyD5GFQI_gTkp37LJl9UdZZ5UVGUw=s180-rw',
              // image2:
              //     'https://lh3.googleusercontent.com/MWEXrjruX7msEmTO4KxOqQq-MrVwNhLqMAS4s8boP2G-rBhhhdNyw8G3eKZ_Dyjk9d4=s180-rw',
              // tag1: 'মাহে রমজান ২০২১',
              // link1:
              //     'https://play.google.com/store/apps/details?id=com.aust.rakib.maheramadan2018',
              // buttonText1: 'GET IT ON GOOGLE PLAY',
              // tag2: 'My Wallet',
              // link2:
              //     'https://play.google.com/store/apps/details?id=com.aust.mywallet',
              // buttonText2: 'GET IT ON GOOGLE ',
              // image1:
              //     'https://lh3.googleusercontent.com/5ctdLZQ7EjM_QiY-rm1ibxy_I_ygaujl9CcDyAVVuyZ8ad3qa4ZJEBWyUgc50n3kUsma=s180-rw',
              // image3:
              //     'https://lh3.googleusercontent.com/YTAkoYcPQk4WuqCIB45BF5hlFEugQSGISp2dmyosojsL9b7y-UIdoTuR3TaS2O7Sjg=s180-rw',
              // tag3: 'HD Wallpapers',
              // link3:
              //     'https://play.google.com/store/apps/details?id=com.rakib.hdwallpapers',
              // buttonText3: 'GET IT ON GOOGLE PLAY',
              ),
          Padding(
            padding: const EdgeInsets.only(bottom: 28.0, top: 28),
            child: Text(
              "Client\'s Apps",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          AppsRow(
            tag: 'Adolescent Health',
            link:
                'https://play.google.com/store/apps/details?id=com.dnet.unicef.adolescent&hl=en&gl=US',
            buttonText: 'GET IT ON GOOGLE PLAY',
            image:
                'https://i.ibb.co/HdPP7r7/Screenshot-2021-08-15-at-3-08-29-PM.png',
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
            link:
                'https://play.google.com/store/apps/details?id=com.osmannoah.on_site_soccer_analysis',
            buttonText: 'GET IT ON GOOGLE PLAY',
            image:
                'https://lh3.googleusercontent.com/IXvB4AVeU_ot-UuPD5_05W3RlZ2cRszoHs449wivdXgGzESoVQ6Q8Sw7ue8LriLvcRk=s180-rw',
            tag2: 'Creative Problem Solver',
            link2:
                'https://play.google.com/store/apps/details?id=com.appcreativeps.creative_problem_solver',
            buttonText2: 'GET IT ON GOOGLE PLAY',
            image2:
                'https://lh3.googleusercontent.com/OUxXaWUmPYFiS5GLagRzkggz2ER11hKYswqFlJpMV4o5LcWbmh65RgYCYAKr0AgmLbY=s180-rw',
            tag3: 'হাতের মুঠোয় কাঁচা বাজার',
            link3:
                'https://play.google.com/store/apps/details?id=com.zamzamit.zzbazarbasic',
            buttonText3: 'GET IT ON GOOGLE PLAY',
            image3:
                'https://lh3.googleusercontent.com/Ae_I-_9c-xiGJ3YuO2Hm-Ey4kzu-f8yRdhayATq9JW5PZQ8veu_kIMS6H9HJ1_N5eRw=s180-rw',
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 40),
            color: Colors.grey.shade200,
            child: Column(
              children: <Widget>[
                Text(
                  'You can also check my Apps in Store',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                        launchURL(
                            'https://apps.apple.com/us/developer/rakib-joarder/id1490618520');
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
    link,
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
  return Column(
    children: <Widget>[
      tag != null
          ? AppsItem(
              tag,
              buttonText,
              link,
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
              tag1 == 'Swap'
                  ? 'https://apps.apple.com/us/app/swap-bd/id1499768718'
                  : '')
          : Container(),
      tag2 != null
          ? AppsItem(
              tag2,
              buttonText2,
              link2,
              image2,
              tag2 == 'EzzyMart'
                  ? 'https://apps.apple.com/tt/app/ebazar-online-shopping-app/id1513815169#?platform=iphone'
                  : tag2 == 'Mahe Ramadan'
                      ? 'https://apps.apple.com/us/app/mahe-ramadan-2021/id1508990104#?platform=iphone'
                      : '')
          : Container(),
      tag3 != null
          ? AppsItem(
              tag3,
              buttonText3,
              link3,
              image3,
              tag3 == 'EzzyMart Partner'
                  ? "https://apps.apple.com/tt/app/ezzymart-partner/id1528605189#?platform=iphone"
                  : '')
          : Container()
    ],
  );
}

Padding AppsItem(tag, buttonText, link, image, appStoreLink) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: InkWell(
      onTap: () {
        showAlertDialog(locator<NavigationService>().scaffoldKey.currentContext,
            tag, buttonText, link, image, appStoreLink);
      },
      child: Column(
        children: <Widget>[
          Hero(
            tag: tag,
            child: Image.network(
              image,
              width: 100,
              height: 100,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            tag,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          )
        ],
      ),
    ),
  );
}

showAlertDialog(
    BuildContext context, tag, buttonText, link, image, appStoreLink) {
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 0,
      content: Hero(
        tag: tag,
        child: Container(
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
                    fontSize: 16),
              )),
              Container(
                height: 10,
              ),
              Image.network(
                image,
                fit: BoxFit.cover,
                width: 160,
              ),
              Container(
                height: 20,
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
                  launchURL(link);
                },
              ),
              Container(
                height: 10,
              ),
              appStoreLink != ''
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
                        launchURL(appStoreLink);
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
