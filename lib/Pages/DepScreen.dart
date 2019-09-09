import 'package:fam_bolivia/Pages/header-dep.dart';
import 'package:flutter/material.dart';

class DepScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Stack(
        children: <Widget>[
          HeaderDep()        
        ],
      ),
      
    );
  }
}
