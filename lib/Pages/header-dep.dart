import 'package:flutter/material.dart';

class HeaderDep extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: double.infinity,
        width: double.infinity, 
      decoration: BoxDecoration(
        color: Color(0xff004fa3),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.bottomCenter,
            height: 80,
            
            child: Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.share),
                  color: Colors.white,
                )
              ],
            ),
            )
            
          ),
          Container(
            margin: EdgeInsets.only(top: 200),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20)
              )
            ),
            
          )
        ],
      )
    );
  }
  
}
