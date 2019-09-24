import 'package:flutter/material.dart';
import 'AMDESList.dart';
import 'AMDESheader.dart';

class AMDESScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Stack(
        children: <Widget>[
          AMDESHeader(),
          AMDESList()        
        ],
      ),
      
    );
  }
}
