import 'package:flutter/material.dart';

import 'PNDList.dart';
import 'PNDheader.dart';


class PNDScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Stack(
        children: <Widget>[
          PNDHeader(),
          PNDList()        
        ],
      ),
      
    );
  }
}
