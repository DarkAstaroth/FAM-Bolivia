import 'package:flutter/material.dart';
import 'MunScreen.dart';

class OptionDep extends StatelessWidget {
  final String imaPath;
  final String nomDep;

  OptionDep(this.imaPath, this.nomDep);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MunScreen()));
        },
        child: Container(
            color: Color(0xffe2e2e2),
            height: 100,
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                              
                              width: double.infinity,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5)
                                )
                              ),
                              child: Container(
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                   Align(
                                     alignment: Alignment.centerLeft,
                                     child:  Text(
                                       "Omasuyo",
                                       style: TextStyle(
                                         fontFamily: "latoBold",
                                         fontSize: 18,
                                         fontWeight: FontWeight.bold
                                       ),
                                     )
                                   ),
                                   Align(
                                     alignment: Alignment.centerLeft,
                                     child:  Text(
                                       "(4 Contactos)",
                                       style: TextStyle(
                                         fontFamily: "latoRegular",
                                         fontSize: 13
                                       ),
                                     )
                                   )
                                  ],
                                )
                              )
                              ),
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
