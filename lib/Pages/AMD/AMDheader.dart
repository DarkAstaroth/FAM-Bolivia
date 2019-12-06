import 'package:flutter/material.dart';
import 'package:share/share.dart';

class AMDHeader extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: double.infinity,
        width: double.infinity, 
      decoration: BoxDecoration(
        color: Color(0xff004fa3),
      ),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.bottomCenter,
            height: 80,
            
            child: Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: (){
                    Share.share(
                            "Visita nuestro sitio web de FAM Bolivia\nhttps://fam.org.bo/");
                  },
                  icon: Icon(Icons.share),
                  color: Colors.white,
                )
              ],
            ),
            )
            
          ),
          Container(
            height: 80,
            child: Center(
              child: Text("AMB",
              style: TextStyle(
                fontFamily: "LatoBold",
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.white
              ),),
            ),
          )
        ],
      )
    );
  }
  
}
