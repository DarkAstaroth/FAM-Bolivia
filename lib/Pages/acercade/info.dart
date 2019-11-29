import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 200,
          color: Color(0xff004fa3),
        ),
        Container(
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 250,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    
                    Container(
                      
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Text("LA PAZ",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "LatoBold",
                            fontSize: 16,
                            fontWeight: FontWeight.w900
                          ),
                          ),
                        )
                      ),
                      height: 250,
                      width: 280,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          boxShadow: [
                            
                            new BoxShadow(
                                color: Colors.black38,
                                offset: Offset(0.0, 7.0),
                                blurRadius: 15.0)
                          ],
                          image: DecorationImage(
                              image: AssetImage("assets/images/f1.jpg"),
                              fit: BoxFit.cover
                              )),
                    ),
                    Container(
                      
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Text("COCHABAMBA",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "LatoBold",
                            fontSize: 16,
                            fontWeight: FontWeight.w900
                          ),
                          ),
                        )
                      ),
                      height: 250,
                      width: 280,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          boxShadow: [
                            
                            new BoxShadow(
                                color: Colors.black38,
                                offset: Offset(0.0, 7.0),
                                blurRadius: 15.0)
                          ],
                          image: DecorationImage(
                              image: AssetImage("assets/images/f2.jpg"),
                              fit: BoxFit.cover
                              )),
                    ),
                    Container(
                      
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Text("SANTA CRUZ",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "LatoBold",
                            fontSize: 16,
                            fontWeight: FontWeight.w900
                          ),
                          ),
                        )
                      ),
                      height: 250,
                      width: 280,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          boxShadow: [
                            
                            new BoxShadow(
                                color: Colors.black38,
                                offset: Offset(0.0, 7.0),
                                blurRadius: 15.0)
                          ],
                          image: DecorationImage(
                              image: AssetImage("assets/images/f3.jpg"),
                              fit: BoxFit.cover
                              )),
                    ),
                    Container(
                      
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Text("ORURO",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "LatoBold",
                            fontSize: 16,
                            fontWeight: FontWeight.w900
                          ),
                          ),
                        )
                      ),
                      height: 250,
                      width: 280,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          boxShadow: [
                            
                            new BoxShadow(
                                color: Colors.black38,
                                offset: Offset(0.0, 7.0),
                                blurRadius: 15.0)
                          ],
                          image: DecorationImage(
                              image: AssetImage("assets/images/f4.jpg"),
                              fit: BoxFit.cover
                              )),
                    ),
                    Container(
                      
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Text("POTOSI",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "LatoBold",
                            fontSize: 16,
                            fontWeight: FontWeight.w900
                          ),
                          ),
                        )
                      ),
                      height: 250,
                      width: 280,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          boxShadow: [
                            
                            new BoxShadow(
                                color: Colors.black38,
                                offset: Offset(0.0, 7.0),
                                blurRadius: 15.0)
                          ],
                          image: DecorationImage(
                              image: AssetImage("assets/images/f5.jpg"),
                              fit: BoxFit.cover
                              )),
                    ),
                    Container(
                      
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Text("CHUQUISACA",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "LatoBold",
                            fontSize: 16,
                            fontWeight: FontWeight.w900
                          ),
                          ),
                        )
                      ),
                      height: 250,
                      width: 280,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          boxShadow: [
                            
                            new BoxShadow(
                                color: Colors.black38,
                                offset: Offset(0.0, 7.0),
                                blurRadius: 15.0)
                          ],
                          image: DecorationImage(
                              image: AssetImage("assets/images/f6.jpg"),
                              fit: BoxFit.cover
                              )),
                    ),
                    Container(
                      
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Text("TARIJA",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "LatoBold",
                            fontSize: 16,
                            fontWeight: FontWeight.w900
                          ),
                          ),
                        )
                      ),
                      height: 250,
                      width: 280,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          boxShadow: [
                            
                            new BoxShadow(
                                color: Colors.black38,
                                offset: Offset(0.0, 7.0),
                                blurRadius: 15.0)
                          ],
                          image: DecorationImage(
                              image: AssetImage("assets/images/f7.jpg"),
                              fit: BoxFit.cover
                              )),
                    ),
                    Container(
                      
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Text("BENI",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "LatoBold",
                            fontSize: 16,
                            fontWeight: FontWeight.w900
                          ),
                          ),
                        )
                      ),
                      height: 250,
                      width: 280,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          boxShadow: [
                            
                            new BoxShadow(
                                color: Colors.black38,
                                offset: Offset(0.0, 7.0),
                                blurRadius: 15.0)
                          ],
                          image: DecorationImage(
                              image: AssetImage("assets/images/f8.jpg"),
                              fit: BoxFit.cover
                              )),
                    ),
                    Container(
                      
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Text("PANDO",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "LatoBold",
                            fontSize: 16,
                            fontWeight: FontWeight.w900
                          ),
                          ),
                        )
                      ),
                      height: 250,
                      width: 280,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          boxShadow: [
                            
                            new BoxShadow(
                                color: Colors.black38,
                                offset: Offset(0.0, 7.0),
                                blurRadius: 15.0)
                          ],
                          image: DecorationImage(
                              image: AssetImage("assets/images/f9.jpg"),
                              fit: BoxFit.cover
                              )),
                    )
                    
                   
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black38,
                          offset: Offset(0.0, 7.0),
                          blurRadius: 15.0)
                    ]),
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Text(
                          "FAM BOLIVIA",
                          style: TextStyle(
                              color: Color(0xff004fa3),
                              fontFamily: "LatoBold",
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          "La Federación de Asociaciones Municipales de Bolivia (FAM-Bolivia) es una institución de derecho privado, sin fines de lucro y  dotada de personalidad jurídica propia y capacidad de obrar, formada libre y voluntariamente por once entidades de representación municipal, que en conjunto constituyen el Sistema Asociativo Municipal boliviano.\nLos roles principales de la FAM-Bolivia son la representación de los gobiernos autónomos municipales ante los órganos públicos del Estado Plurinacional de Bolivia y ante otras instituciones y programas nacionales e internacionales, realizar incidencia política a favor de los intereses del municipalismo boliviano, como también promover y desarrollar actividades de fortalecimiento de capacidades de gestión municipal.",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Lato Regular",
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black38,
                          offset: Offset(0.0, 7.0),
                          blurRadius: 15.0)
                    ]),
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Text(
                          "Visión",
                          style: TextStyle(
                              color: Color(0xff004fa3),
                              fontFamily: "LatoBold",
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          "FAM-Bolivia, una entidad inclusiva, con institucionalidad sustentada por Ley, de administración descentralizada, con sostenibilidad técnica-financiera, modelo y líder del Asociativismo de Gobiernos Municipales en Latinoamérica.",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Lato Regular",
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.grey[300],
                          offset: Offset(0.0, 7.0),
                          blurRadius: 15.0)
                    ]),
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Text(
                          "Misión",
                          style: TextStyle(
                              color: Color(0xff004fa3),
                              fontFamily: "LatoBold",
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          "Representar a los gobiernos autónomos municipales con pleno ejercicio de su  autonomía, con capacidad técnica, administrativa y con protagonismo en el desarrollo del Estado Plurinacional de Bolivia.",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Lato Regular",
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    )
      ],
    );
  }
}
