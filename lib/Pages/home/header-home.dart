import 'package:flutter/material.dart';
import 'package:share/share.dart';

class HeaderHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Color(0xff004fa3)
            ],
            tileMode: TileMode.clamp,
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 0.0),
            stops: [0.0,1.0],
          )
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(0),
                  child:
                  Container(
                  width: 180,
                  height: 180,
                  
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.all(00),
                    child: Image(image: AssetImage("assets/images/logofam.png"),),
                  ),
                ),
                ),
                Expanded(
                  child: Container(
                    height: 190,
                    child: Center(
                      child: Text(
                        "Directorio Municipal",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
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
