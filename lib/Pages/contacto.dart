import 'package:flutter/material.dart';

import 'contactoDetails.dart';
import 'header-contacto.dart';

class Contacto extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: <Widget>[
          HeaderContacto(),
          ContactoDetails()
        ],
       
      )
    );
  }

}