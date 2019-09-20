import 'package:flutter/material.dart';

import 'SCZList.dart';
import 'SCZheader.dart';


class SCZScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Stack(
        children: <Widget>[
          SCZHeader(),
          SCZList()        
        ],
      ),
      
    );
  }
}
