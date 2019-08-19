import 'package:fam_bolivia/Pages/home.dart';
import 'package:flutter/material.dart';

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
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.indigo
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indextap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              title: Text("")
            ),
          ],
        ),
      ),
    );
  }


}