import 'package:fam_bolivia/Pages/optionHome.dart';
import 'package:flutter/material.dart';

class HomeList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.only(top:135),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
              ),
             
            ),
            child: Column(
              children: <Widget>[
                 Container(
                    height:50,
                    child: Center(
                      child: Text(
                        "Departamentos",
                        style: TextStyle(
                          fontFamily: "LatoBold",
                          fontWeight: FontWeight.w500,
                          fontSize: 17
                        ),
                      ),
                    ),
                  ),
                
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: ListView(
                        children: <Widget>[
                          OptionHome("assets/images/lapaz.jpg","La Paz"),
                         
                        
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          );
  }

}
