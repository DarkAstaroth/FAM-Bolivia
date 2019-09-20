import 'package:flutter/material.dart';

import 'SCRList.dart';
import 'SCRheader.dart';


class SCRScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Stack(
        children: <Widget>[
          SCRHeader(),
          SCRList()        
        ],
      ),
      
    );
  }
}
