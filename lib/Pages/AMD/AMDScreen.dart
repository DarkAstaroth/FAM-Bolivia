import 'package:flutter/material.dart';
import 'AMDList.dart';
import 'AMDheader.dart';

class AMDScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Stack(
        children: <Widget>[
          AMDHeader(),
          AMDList()        
        ],
      ),
      
    );
  }
}
