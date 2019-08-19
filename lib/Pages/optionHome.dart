import 'package:flutter/material.dart';

class OptionHome extends StatelessWidget{
  final String imaPath;

  OptionHome(this.imaPath);
  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("1"),
          )
        );

      },
      child: Padding(
        padding: EdgeInsets.only(left: 10,right: 10),
        child: Container(
        margin: EdgeInsets.all(10),
        height: 180,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          image: DecorationImage(
            image: AssetImage(imaPath),
            fit: BoxFit.cover
          )
        ),
        child: Text(""),
      ),
      )
    );
  }

}