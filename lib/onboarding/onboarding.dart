import 'package:fam_bolivia/onboarding/Data/onboarding-page-data.dart';
import 'package:fam_bolivia/onboarding/Model/pageViewIndicator.dart';
import 'package:fam_bolivia/onboarding/Screens/onboarding-page.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  final PageController pageController = PageController();
  final ValueNotifier currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          PageView.builder(
            onPageChanged: (int index) {
              currentPageNotifier.value = index;
            },
            itemBuilder: (BuildContext builderContext, int index) =>
                OnboardingPage(
                    entry: onboardingData[index],
                    pageController: pageController),
            itemCount: onboardingData.length,
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 40.0,
            child: PageCircleIndicator(
              itemCount: onboardingData.length,
              currentPageNotifier: currentPageNotifier,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "Bienvenido",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "LatoBold",
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Text(
                    "Omitir",
                    style: TextStyle(fontFamily: "LatoRegular", fontSize: 15),
                  ),
                )
              ],
            ),
            width: double.infinity,
            height: 75,
            decoration: BoxDecoration(color: Colors.white),
          ),
        ],
      )),
    );
  }
}
