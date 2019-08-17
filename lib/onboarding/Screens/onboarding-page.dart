import 'package:fam_bolivia/onboarding/Model/onboarding-page-model.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget{
  final PageController pageController;
  final OnboardingPageModel entry;

  OnboardingPage({Key key,this.pageController,this.entry}):super(key:key);
  
  @override
  _OnboardingPage createState()=>_OnboardingPage();

}

class _OnboardingPage extends State<OnboardingPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 75,
            width: double.infinity,
          ),
          Expanded(
            child: Container(
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.only(top: 35),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Text(
                      widget.entry.titulo,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: "LatoBold",
                        fontWeight: FontWeight.w900
                      ),
                    ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20,left: 45,right: 45),
                      child: Text(
                      widget.entry.descripcion,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "LatoRegular"
                      ),
                      textAlign: TextAlign.center,
                    ),
                    ),

                  ],
                ),
              )
            ),
          )
        ],
      )
    );
  }

}