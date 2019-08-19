import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return  Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff004fa3),
      ),
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              height: 180,
              child: Center(
                child: Text("Directorio de Asociaciones\nMunicipales de Bolivia",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "LatoBold"
                ),
                textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      )  
      );
    
 
  }
}