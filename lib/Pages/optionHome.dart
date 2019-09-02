import 'package:flutter/material.dart';

class OptionHome extends StatelessWidget {
  final String imaPath;
  final String nomDep;
  final String imaPath2;
  final String nomDep2;

  OptionHome(this.imaPath, this.nomDep,this.imaPath2,this.nomDep2);
  @override

  
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: 150,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                  padding: EdgeInsets.only(top:5,left:10,right: 5,bottom: 10 ),
                  child: InkWell(
                    onTap: () {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("1"),
                      ));
                    },
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(imaPath),
                                  fit: BoxFit.cover)),
                        ),
                        Opacity(
                          opacity: 0.4,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        ),
                        Center(
                          child: Text(
                            nomDep,
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "LatoBold",
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.only(top:5,right: 10,left: 5,bottom: 10),
                  child: InkWell(
                    onTap: () {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("1"),
                      ));
                    },
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(imaPath2),
                                  fit: BoxFit.cover)),
                        ),
                        Opacity(
                          opacity: 0.4,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        ),
                        Center(
                          child: Text(
                            nomDep2,
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "LatoBold",
                                color: Colors.white),
                          ),
                        )
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
