import 'package:flutter/material.dart';
import 'optionDep.dart';

class DepList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
            height: double.infinity,
            margin: EdgeInsets.only(top: 180),
            decoration: BoxDecoration(
              color: Color(0xffe2e2e2),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20)
              )
            ),
            child: Stack(
              children: <Widget>[
                Container(
            margin: EdgeInsets.only(top: 25),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffe2e2e2),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Padding(
              padding: EdgeInsets.only(bottom: 0),
              child: ListView(
                
                children: <Widget>[ 
                  OptionDep("assets/images/lapaz.jpg", "La Paz"),
                ],
              ),
            ),
          ),
                Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Center(
              child: Text(
                "Provincias",
                style: TextStyle(
                    fontFamily: "LatoBold",
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
            ),
          ),
              ],
            ),
          );
  }
}