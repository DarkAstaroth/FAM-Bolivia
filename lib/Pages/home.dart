import 'package:fam_bolivia/Pages/header-home.dart';
import 'package:fam_bolivia/Pages/homeList.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:Stack(
        children: <Widget>[
          HeaderHome(),
          HomeList()          
        ],
      ),
      
    );
  }

}