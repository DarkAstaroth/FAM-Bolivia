import 'package:fam_bolivia/onboarding/Model/onboarding-page-model.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget{
  final PageController pageController;
  final OnboardingPageModel entry;

  OnboardingPage(Key key,this.pageController,this.entry):super(key:key);
  @override
  _OnboardingPage createState()=>_OnboardingPage();
}

class _OnboardingPage extends State<OnboardingPage>{
  @override
  Widget build(BuildContext context) {
    
    return Text(widget.entry.titulo);
  }

}