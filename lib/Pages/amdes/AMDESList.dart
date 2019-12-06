import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

class AMDESList extends StatefulWidget {
  _AMDESList createState() => _AMDESList();
}

class _AMDESList extends State<AMDESList> {
  Future getPost() async {
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection("AMDES").orderBy("Id").getDocuments();
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

     callnumber(snapshot) async {
      if (snapshot == null) {
        return Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("No existe telefono"),
          duration: Duration(seconds: 3),
        ));
      } else {
        String a = snapshot;
        String url = "tel:$a";
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw "No se ha podido conectar";
        }
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
              color: Colors.grey[100],
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
                          child: CircularProgressIndicator(),
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
                                  boxShadow: [
                                    new BoxShadow(
                                        color: Colors.grey[300],
                                        offset: Offset(0.0, 7.0),
                                        blurRadius: 15.0)
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Nº:  ",
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
                                        "Asociación:  ",
                                        style: TextStyle(
                                            color: Color(0xff004fa3),
                                            fontFamily: "LatoBold"),
                                      ),
                                      Container(
                                        child: Text("${notNull(snapshot.data[index].data["ASOCIACION"])}"),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Municipio:  ",
                                        style: TextStyle(
                                            color: Color(0xff004fa3),
                                            fontFamily: "LatoBold"),
                                      ),
                                      Container(
                                        child: Text("${notNull(snapshot.data[index].data["MUNICIPIO"])}"),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Presidente:  ",
                                        style: TextStyle(
                                            color: Color(0xff004fa3),
                                            fontFamily: "LatoBold"),
                                      ),
                                      Flexible(
                                        child: Text("${notNull(snapshot.data[index].data["PRESIDENTE"])}"),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Coordinador:  ",
                                        style: TextStyle(
                                            color: Color(0xff004fa3),
                                            fontFamily: "LatoBold"),
                                      ),
                                      Flexible(
                                        child: Text("${notNull(snapshot.data[index].data["DIRECTOR"])}"),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Teléfono:  ",
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
                                        "Correo:  ",
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
                                    "Dirección:  ",
                                    style: TextStyle(
                                        color: Color(0xff004fa3),
                                        fontFamily: "LatoBold"),
                                  ),
                                  ),
                                  Container(
                                      child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Flexible(
                                        child: Text(
                                            "${notNull(snapshot.data[index].data["DIRECCION"])}"),
                                      ),
                                      Center(
                                          child: FloatingActionButton(
                                        onPressed: () async {
                                          await callnumber(snapshot
                                              .data[index].data["TELEFONO"]);
                                        },
                                        child: Icon(Icons.phone),
                                      ))
                                    ],
                                  ))
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
                "Sistema Asociativo Municipal",
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
