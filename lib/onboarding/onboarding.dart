import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "Bienvenido",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "LatoBold"
                      ),
                    ),                   
                  ),
                Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Text(
                    "Omitir",
                    style: TextStyle(
                      fontFamily: "LatoRegular",
                      fontSize: 15
                    ),
                    ),
                )
                ],
              ),
              width: double.infinity,
              height: 75,
              decoration: BoxDecoration(
                color: Colors.white
              ),
            ),
            
          ],
        )
      ),
    );
  }

}