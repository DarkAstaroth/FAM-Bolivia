import 'package:fam_bolivia/Pages/optionHome.dart';
import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.only(top: 135),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 25),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Padding(
              padding: EdgeInsets.only(bottom: 0),
              child: ListView(
                children: <Widget>[
                  OptionHome("assets/images/lapaz.jpg", "La Paz",
                      "assets/images/cbba.png", "Cochabamba"),
                  OptionHome("assets/images/scz.png", "Santa Cruz",
                      "assets/images/oruro.png", "Oruro"),
                  OptionHome("assets/images/potosi.png", "Potosi",
                      "assets/images/sucre.png", "Sucre"),
                  OptionHome("assets/images/beni.png", "Beni",
                      "assets/images/tarija.png", "Tarija"),
                  OptionHome("assets/images/cobija.jpg", "Pando",
                      "assets/images/cbba.png", "Amdes / Aco"),
                ],
              ),
            ),
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
                "Departamentos",
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
