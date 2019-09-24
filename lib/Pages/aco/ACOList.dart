import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class ACOList extends StatefulWidget {
  _ACOList createState() => _ACOList();
}

class _ACOList extends State<ACOList> {
  Future getPost() async {
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection("aco").getDocuments();
    return qn.documents;
  }

  @override
  Widget build(BuildContext context) {
    
    notNull(snapshot) {
      if (snapshot == null) {
        return "Sin datos";
      } else {
        return snapshot;
      }
    }

    return Container(
      height: double.infinity,
      margin: EdgeInsets.only(top: 180),
      decoration: BoxDecoration(
          color: Color(0xfff2f2f2),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
              color: Color(0xffe2e2e2),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Padding(
                padding: EdgeInsets.only(bottom: 0),
                child: FutureBuilder(
                    future: getPost(),
                    builder: (_, AsyncSnapshot snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: Text("Loading.."),
                        );
                      } else {
                        return ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (_, index) {
                            return Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(
                                  top: 10, bottom: 10, left: 30, right: 30),
                              padding: EdgeInsets.only(
                                  top: 10, bottom: 10, left: 20, right: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Nº:",
                                        style: TextStyle(
                                            color: Color(0xff004fa3),
                                            fontFamily: "LatoBold"),
                                      ),
                                      Container(
                                        child: Text("${index+1}"),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "ACO:",
                                        style: TextStyle(
                                            color: Color(0xff004fa3),
                                            fontFamily: "LatoBold"),
                                      ),
                                      Container(
                                        child: Text("${notNull(snapshot.data[index].data["ACO"])}"),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Presidenta:",
                                        style: TextStyle(
                                            color: Color(0xff004fa3),
                                            fontFamily: "LatoBold"),
                                      ),
                                      Flexible(
                                        child: Text("${notNull(snapshot.data[index].data["PRESIDENTA"])}"),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Coordinador:",
                                        style: TextStyle(
                                            color: Color(0xff004fa3),
                                            fontFamily: "LatoBold"),
                                      ),
                                      Flexible(
                                        child: Text("${notNull(snapshot.data[index].data["COORDINADOR"])}"),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Teléfono:",
                                        style: TextStyle(
                                            color: Color(0xff004fa3),
                                            fontFamily: "LatoBold"),
                                      ),
                                      Container(
                                        child: Text("${notNull(snapshot.data[index].data["TELEFONO"])}")                                   )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Correo:",
                                        style: TextStyle(
                                            color: Color(0xff004fa3),
                                            fontFamily: "LatoBold"),
                                      ),
                                      Flexible(
                                        child: Text("${notNull(snapshot.data[index].data["CORREO"])}"),
                                      )
                                    ],
                                  ),
                               
                                
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                    "Dirección:",
                                    style: TextStyle(
                                        color: Color(0xff004fa3),
                                        fontFamily: "LatoBold"),
                                  ),
                                  ),
                                  Container(
                                    child: Text(
                                        "${notNull(snapshot.data[index].data["DIRECCION"])}"),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      }
                    })),
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
                "Presidentas ACOBOL",
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
