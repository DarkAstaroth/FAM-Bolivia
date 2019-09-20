import 'package:flutter/material.dart';

import 'BNIList.dart';
import 'BNIheader.dart';


class BNIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Stack(
        children: <Widget>[
          BNIHeader(),
          BNIList()        
        ],
      ),
      
    );
  }
}
