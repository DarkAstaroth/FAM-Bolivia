import 'package:flutter/material.dart';
import 'ACOList.dart';
import 'ACOheader.dart';

class ACOScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Stack(
        children: <Widget>[
          ACOHeader(),
          ACOList()        
        ],
      ),
      
    );
  }
}
