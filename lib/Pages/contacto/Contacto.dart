import 'package:flutter/material.dart';

import 'headerContacto.dart';


class ContactoScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:Column(
        children: <Widget>[
          Container(
            height: 250,
            child: Container(
              width: 200,
              child: Image(
              image: AssetImage("assets/images/logofam.png"),
            ),
            )
            
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff004fa3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25)
                )
              ),
              child: Container(
                padding: EdgeInsets.only(left: 50,right: 50),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top:25),
                      child: Text("Dirección",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "LatoBold",
                        fontSize: 16
                      ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:10),
                      child: Text("Av. 14 de Septiembre N° 6154 (Obrajes), entre calles 15 y 16",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Lato Regular",
                      ),
                      textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:15),
                      child: Text("Teléfonos",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "LatoBold",
                        fontSize: 16
                      ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:10),
                      child: Text('''Teléfono: +591 (2) 2789157\n(2) 2789114 * (2) 2789170\nFax: +591 2 2782106''',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Lato Regular",
                      ),
                      textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:15),
                      child: Text("Correo",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "LatoBold",
                        fontSize: 16
                      ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:10),
                      child: Text("fam@fam.org.bo",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Lato Regular",
                      ),
                      textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              )
            ),
          )
        ],
      )
      
    );
  }

}