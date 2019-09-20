import 'package:flutter/material.dart';
import 'header-home.dart';
import 'homeList.dart';

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