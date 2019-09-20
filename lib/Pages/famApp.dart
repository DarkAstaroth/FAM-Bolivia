import 'package:fam_bolivia/Pages/acercade/info.dart';
import 'package:fam_bolivia/Pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'contacto/Contacto.dart';

class FamApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _FamApp();
  }
}

class _FamApp extends State<FamApp> {
  final PageController pageController = PageController();
  int indextap = 0;

  final List<Widget> widgetsChildren = [
    HomeScreen(),
    InfoScreen(),
    ContactoScreen()
  ];
  void onTapTapped(int index) {
    setState(() {
      indextap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: PageView.builder(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              indextap = index;
            });
          },
          itemBuilder: (BuildContext builderContext, int index) =>
              widgetsChildren[index],
          itemCount: widgetsChildren.length,
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: indextap,
          showElevation: true,
          onItemSelected: (index) => setState(() {
            indextap = index;
            pageController.animateToPage(index,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.book),
              title: Text("Directorio"),
              activeColor: Color(0xff004fa3),
            ),
            
            BottomNavyBarItem(
                icon: Icon(Icons.info),
                title: Text("Acerca de"),
                activeColor: Color(0xff004fa3)),
            BottomNavyBarItem(
                icon: Icon(Icons.phone),
                title: Text("Contactos"),
                activeColor: Color(0xff004fa3)),
          ],
        ));
  }
}
