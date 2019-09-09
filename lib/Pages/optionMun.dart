import 'package:flutter/material.dart';
import 'MunScreen.dart';

class OptionMun extends StatelessWidget {
  final String imaPath;
  final String nomDep;

  OptionMun(this.imaPath, this.nomDep);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MunScreen()));
        },
        child: Container(
            color: Color(0xffe2e2e2),
            height: 280,
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 250,
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Container(
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                "Provincia: ",
                                                style: TextStyle(
                                                    fontFamily: "latoBold"),
                                              ),
                                              Text(
                                                "Omasuyo",
                                                style: TextStyle(
                                                    fontFamily: "latoRegular"),
                                              )
                                            ],
                                          )),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                "Municipio: ",
                                                style: TextStyle(
                                                    fontFamily: "latoBold"),
                                              ),
                                              Text(
                                                "Achachicala",
                                                style: TextStyle(
                                                    fontFamily: "latoRegular"),
                                              )
                                            ],
                                          )),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                "Aniversario: ",
                                                style: TextStyle(
                                                    fontFamily: "latoBold"),
                                              ),
                                              Text(
                                                "23 Ene",
                                                style: TextStyle(
                                                    fontFamily: "latoRegular"),
                                              )
                                            ],
                                          )),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                "Alcalde: ",
                                                style: TextStyle(
                                                    fontFamily: "latoBold"),
                                              ),
                                              Text(
                                                "Edgar Ramos Laura",
                                                style: TextStyle(
                                                    fontFamily: "latoRegular"),
                                              )
                                            ],
                                          )),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                "Celular: ",
                                                style: TextStyle(
                                                    fontFamily: "latoBold"),
                                              ),
                                              Text(
                                                "72037303",
                                                style: TextStyle(
                                                    fontFamily: "latoRegular"),
                                              )
                                            ],
                                          )),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                "Correo: ",
                                                style: TextStyle(
                                                    fontFamily: "latoBold"),
                                              ),
                                              Text(
                                                "",
                                                style: TextStyle(
                                                    fontFamily: "latoRegular"),
                                              )
                                            ],
                                          )),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                "Cel-Coordinador: ",
                                                style: TextStyle(
                                                    fontFamily: "latoBold"),
                                              ),
                                              Text(
                                                "",
                                                style: TextStyle(
                                                    fontFamily: "latoRegular"),
                                              )
                                            ],
                                          )),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                "Telefono(s): ",
                                                style: TextStyle(
                                                    fontFamily: "latoBold"),
                                              ),
                                              Text(
                                                "2-2136503",
                                                style: TextStyle(
                                                    fontFamily: "latoRegular"),
                                              )
                                            ],
                                          )),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                "Telefono Fax: ",
                                                style: TextStyle(
                                                    fontFamily: "latoBold"),
                                              ),
                                              Text(
                                                "",
                                                style: TextStyle(
                                                    fontFamily: "latoRegular"),
                                              )
                                            ],
                                          )),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                "Dirección: ",
                                                style: TextStyle(
                                                    fontFamily: "latoBold"),
                                              ),
                                            ],
                                          )),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                child: Flexible(
                                                  child: Text(
                                                    "Plaza Mariscal Santa Cruz s/n"
                                                  ),
                                                ),
                                              )
                                            ],
                                          )),
                                    ],
                                  ))),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
