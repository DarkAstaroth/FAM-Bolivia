import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                children: <Widget>[
                  Text("Bienvenido"),
                ],
              ),
              width: double.infinity,
              height: 75,
              decoration: BoxDecoration(
                color: Colors.red
              ),
            ),
            
          ],
        )
      ),
    );
  }

}