import 'package:flutter/material.dart';
import 'LPList.dart';
import 'LPheader.dart';

class LPScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Stack(
        children: <Widget>[
          LPHeader(),
          LPList()        
        ],
      ),
      
    );
  }
}
