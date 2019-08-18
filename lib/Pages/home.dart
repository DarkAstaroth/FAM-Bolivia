import 'package:fam_bolivia/Pages/header-home.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:Stack(
        children: <Widget>[
          HeaderHome(),
          Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.only(top:160),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
              )
            ),
          ),
          
        ],
      )
    );
  }

}