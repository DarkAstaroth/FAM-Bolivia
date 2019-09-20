import 'package:flutter/material.dart';

class PNDHeader extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: double.infinity,
        width: double.infinity, 
      decoration: BoxDecoration(
        color: Color(0xff004fa3),
      ),
      child: Column(
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
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                      image: AssetImage('assets/images/lapaz1.png'),
                    )
            ),
          )
        ],
      )
    );
  }
  
}
