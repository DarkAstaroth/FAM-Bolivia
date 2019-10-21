import 'package:fam_bolivia/Pages/beni/BNIScreen.dart';
import 'package:fam_bolivia/Pages/pando/PNDScreen.dart';
import 'package:fam_bolivia/Pages/potosi/PSIScreen.dart';
import 'package:fam_bolivia/Pages/scz/SCZScreen.dart';
import 'package:fam_bolivia/Pages/sucre/SCRScreen.dart';
import 'package:fam_bolivia/Pages/tarija/TJAScreen.dart';
import 'package:flutter/material.dart';

import 'aco/ACOScreen.dart';
import 'amdes/AMDESScreen.dart';
import 'cbba/CBBAScreen.dart';
import 'lapaz/LPScreen.dart';
import 'oruro/ORUScreen.dart';

class OptionHome extends StatelessWidget {
  final String imaPath;
  final String nomDep;

  OptionHome(this.imaPath, this.nomDep);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          if (nomDep == 'La Paz') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LPScreen()));
          }
          if (nomDep == 'Cochabamba') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CBBAScreen()));
          }
          if (nomDep == 'Santa Cruz') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SCZScreen()));
          }
          if (nomDep == 'Oruro') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ORUScreen()));
          }
          if (nomDep == 'Potosí') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => PSIScreen()));
          }
          if (nomDep == 'Chuquisaca') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SCRScreen()));
          }
          if (nomDep == 'Tarija') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => TJAScreen()));
          }
          if (nomDep == 'Beni') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BNIScreen()));
          }
          if (nomDep == 'Pando') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => PNDScreen()));
          }
          if (nomDep == 'ACO') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ACOScreen()));
          }
          if (nomDep == 'AMDES') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AMDESScreen()));
          }
        },
        child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              
            ),
            height: 100,
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 80,
                  margin: EdgeInsets.only(right: 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5)),
                      image: DecorationImage(
                          image: AssetImage(imaPath), fit: BoxFit.cover)),
                ),
                Expanded(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.all(20),
                              child: Center(
                                child: Text(
                                  nomDep,
                                  style: TextStyle(
                                      fontFamily: 'latoBold',
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ),
                        Container(
                          width: 50,
                          child: Center(
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
