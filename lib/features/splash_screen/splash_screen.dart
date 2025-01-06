import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_place/core/constant/app_color.dart';
import '../onboarding_screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => OnboardingScreen(),
    ));
  }

  @override
  dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(color: AppColor.kPrimaryColor),
            padding: EdgeInsets.symmetric(horizontal: 90.0),
            child: SvgPicture.asset(
              'assets/images/logo.svg',
              colorFilter: ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
              fit: BoxFit.scaleDown,
            ),
          )
        ],
      ),
    );
  }
}
