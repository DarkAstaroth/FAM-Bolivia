import 'package:flutter/material.dart';
import 'MunList.dart';
import 'header-mun.dart';

class MunScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Stack(
        children: <Widget>[
          HeaderMun(),
          MunList()        
        ],
      ),
      
    );
  }
}
