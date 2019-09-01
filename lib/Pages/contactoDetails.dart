import 'package:flutter/material.dart';

class ContactoDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.only(top: 130),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(30)
        )
      ),

    );
  }

}