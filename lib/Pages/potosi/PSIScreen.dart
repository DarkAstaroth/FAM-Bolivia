import 'package:flutter/material.dart';

import 'PSIList.dart';
import 'PSIheader.dart';


class PSIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Stack(
        children: <Widget>[
          PSIHeader(),
          PSIList()        
        ],
      ),
      
    );
  }
}
