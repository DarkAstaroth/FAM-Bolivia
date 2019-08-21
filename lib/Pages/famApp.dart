import 'package:fam_bolivia/Pages/home.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class FamApp extends StatefulWidget{
  State<StatefulWidget> createState(){
    return _FamApp();
  }
}

class _FamApp extends State<FamApp>{
  
  int indextap=0;

  final List<Widget> widgetsChildren=[
    HomeScreen(),
    HomeScreen(),
    HomeScreen()
  ];
  void onTapTapped(int index){
    setState(() {
      indextap=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indextap] ,
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: indextap,
        showElevation: true,
        onItemSelected: (index)=> setState((){
          indextap=index;
          onTapTapped(index);
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.book),
            title: Text("Directorio"),
            activeColor: Color(0xff004fa3),
          ),
           BottomNavyBarItem(
            icon: Icon(Icons.phone),
            title: Text("Contactos"),
            activeColor: Color(0xff004fa3)
          ),
           BottomNavyBarItem(
            icon: Icon(Icons.info),
            title: Text("Ayuda"),
            activeColor: Color(0xff004fa3)
          ),
        ],
      )
    );
  }


}