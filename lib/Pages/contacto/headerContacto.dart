import 'package:flutter/material.dart';
import 'package:share/share.dart';

class HeaderContacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff004fa3),
        ),
        child: Stack(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.bottomRight,
                height: 80,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {
                        Share.share(
                            "Mira nuestra nueva aplicación de FAM Bolivia ");
                      },
                      color: Colors.white,
                    ),
                  ],
                )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 180,
                    child: Center(
                      child: Text(
                        "Directorio de Asociaciones\nMunicipales de Bolivia",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "LatoBold"),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
