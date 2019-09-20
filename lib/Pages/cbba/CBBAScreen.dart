import 'package:flutter/material.dart';

import 'CBBAList.dart';
import 'CBBAheader.dart';


class CBBAScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Stack(
        children: <Widget>[
          CBBAHeader(),
          CBBAList()        
        ],
      ),
      
    );
  }
}
