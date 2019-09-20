import 'package:flutter/material.dart';

import 'ORUList.dart';
import 'ORUheader.dart';


class ORUScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Stack(
        children: <Widget>[
          ORUHeader(),
          ORUList()        
        ],
      ),
      
    );
  }
}
