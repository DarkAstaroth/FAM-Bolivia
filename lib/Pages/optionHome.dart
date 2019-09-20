
import 'package:flutter/material.dart';

import 'cbba/CBBAScreen.dart';
import 'lapaz/LPScreen.dart';

class OptionHome extends StatelessWidget {
  final String imaPath;
  final String nomDep;

  OptionHome(this.imaPath, this.nomDep);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          if (nomDep=='La Paz') {
            Navigator.push(context, MaterialPageRoute(builder:(context)=> LPScreen()));
          }
          if (nomDep=='Cochabamba') {
            Navigator.push(context, MaterialPageRoute(builder:(context)=> CBBAScreen()));
          }
          
        },
        child: Container(
            color: Color(0xffe2e2e2),
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
                      bottomLeft: Radius.circular(5)
                    ),
                    image: DecorationImage(
                      image: AssetImage(imaPath),
                      fit: BoxFit.cover
                    )
                    ),
                ),
                Expanded(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5)
                      )
                      ),
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
                                    fontWeight: FontWeight.bold
                                  ),
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
