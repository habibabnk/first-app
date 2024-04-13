import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override   Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/Backgrounds/back.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 50, sigmaY: 10),
              //child: SizedBox(),
            ),
          ),
          const RiveAnimation.asset("assets/RiveAssets/shapes.riv"),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
              child: SizedBox(),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  SizedBox(
                    width: 360,
                    child: Column(
                      children: [
                        Text(
                          "MOURAFIK",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: " Poppins",
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 340),
                        Text(
                            "   Healthy LifeOrganizerYour  Personal Lifestyle  Companion "),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 250,
                    child: Stack(
                      children: [
                        RiveAnimation.asset("nassets/RiveAssets/button.riv"),
                        Positioned.fill(
                          top: 8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(CupertinoIcons.arrow_right),
                              SizedBox(width: 8),
                              Text("Get Started",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w600)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
