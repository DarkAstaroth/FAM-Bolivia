import 'dart:core';
import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';

class PageCircleIndicator extends StatelessWidget{
  final ValueNotifier<int> currentPageNotifier;
  final int itemCount;
  const PageCircleIndicator({
    Key key,this.currentPageNotifier,this.itemCount
  }):super(key:key);

  @override
  Widget build(BuildContext context){
    return PageViewIndicator(
  pageIndexNotifier: currentPageNotifier,
  length: itemCount,
  normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.white,
      ),
  highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.white,
        ),
      ),
);
  }
  
}