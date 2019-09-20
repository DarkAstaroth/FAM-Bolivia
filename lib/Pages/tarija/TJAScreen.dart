import 'package:flutter/material.dart';

import 'TJAList.dart';
import 'TJAheader.dart';


class TJAScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Stack(
        children: <Widget>[
          TJAHeader(),
          TJAList()        
        ],
      ),
      
    );
  }
}
