import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
class ContactoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    _launchURLFacebook() async {
      const url = 'https://es-la.facebook.com/FAM-Bolivia-181646422172306/';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'No se puede abrir $url';
      }
    }

    _launchURLIntagram() async {
      const url = 'https://www.instagram.com/fambolivia/';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'No se puede abrir $url';
      }
    }

    _launchURLTwitter() async {
      const url = 'https://twitter.com/FAM_Bolivia1';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'No se puede abrir $url';
      }
    }

    _launchURLYoutube() async {
      const url = 'https://www.youtube.com/channel/UC30U2C0K1lENrxqLNIyHC9Q';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'No se puede abrir $url';
      }
    }

    _launchURLLink() async {
      const url = 'https://www.linkedin.com/in/fam-bolivia-91797b36';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'No se puede abrir $url';
      }
    }

    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
            height: 250,
            child: Container(
              width: 200,
              child: Image(
                image: AssetImage("assets/images/logofam.png"),
              ),
            )),
        Expanded(
          child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xff004fa3),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Container(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Text(
                        "Dirección",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "LatoBold",
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Av. 14 de Septiembre N° 6154 (Obrajes), entre calles 15 y 16",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Lato Regular",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Teléfonos",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "LatoBold",
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        '''Teléfono: +591 (2) 2789157\n(2) 2789114 * (2) 2789170\nFax: +591 2 2782106''',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Lato Regular",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Correo",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "LatoBold",
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "fam@fam.org.bo",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Lato Regular",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Redes Sociales",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "LatoBold",
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              color: Colors.white,
                              icon: new Icon(FontAwesomeIcons.facebook),
                              onPressed: _launchURLFacebook,
                            ),
                            IconButton(
                              color: Colors.white,
                              icon: new Icon(FontAwesomeIcons.instagram),
                              onPressed: _launchURLIntagram,
                            ),
                            IconButton(
                              color: Colors.white,
                              icon: new Icon(FontAwesomeIcons.twitter),
                              onPressed:_launchURLTwitter,
                            ),
                            IconButton(
                              color: Colors.white,
                              icon: new Icon(FontAwesomeIcons.youtube),
                              onPressed: _launchURLYoutube,
                            ),
                            IconButton(
                              color: Colors.white,
                              icon: new Icon(FontAwesomeIcons.linkedin),
                              onPressed: _launchURLLink,
                            )
                          ],
                        )),
                  ],
                ),
              )),
        )
      ],
    ));
  }
}
