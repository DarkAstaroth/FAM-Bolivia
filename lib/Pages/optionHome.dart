import 'package:flutter/material.dart';

class OptionHome extends StatelessWidget {
  final String imaPath;
  final String nomDep;

  OptionHome(this.imaPath,this.nomDep);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("1"),
          ));
        },
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 80,
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 250,                    
                    decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage(imaPath), fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30)
                          ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Opacity(
                          opacity: 0.4,
                          child: Container(
                            height: 100,
                            width: 250,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30)
                              )
                            ),
                          ),
                        ),
                        Center(
                      child: Text(
                        nomDep,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "LatoBold",
                          fontSize: 20
                        ),
                      ),
                    ),
                      ],
                    )
                  ),
                  Expanded(
                    child: Container(
                      
                      decoration: BoxDecoration(
                        color: Color(0xff004fa3),
                         borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30)
                          )
                      ),
                      child: Center(
                        child: Icon(
                          Icons.chevron_right,
                          color: Color(0xffffffff),
                          ),
                      ),
                    ),
                  )
                ],
              )),
        ));
  }
}
