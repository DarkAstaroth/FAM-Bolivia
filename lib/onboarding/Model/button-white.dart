import 'package:flutter/material.dart';

class ButtonWhite extends StatelessWidget{
  String buttonText="Navigate";
  ButtonWhite(this.buttonText);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("click"),
          )
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          
        ),
        height: 40.0,
        width: 130.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "latoRegular",
              color: Color(0xff004fab)
            ),
          ),
        ),
      ),
    );
  }
}