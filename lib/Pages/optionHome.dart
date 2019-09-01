import 'package:flutter/material.dart';

class OptionHome extends StatelessWidget {
  final String imaPath;
  final String nomDep;

  OptionHome(this.imaPath, this.nomDep);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: 200,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                  padding: EdgeInsets.all(12),
                  child: InkWell(
                    onTap: () {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("1"),
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  )),
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.all(12),
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
                                  BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/lapaz.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Opacity(
                          opacity: 0.4,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)))),
                        ),
                        Center(
                          child: Text(
                            "La Paz",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "LatoBold",
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  )),
            )
          ],
        ));
  }
}
