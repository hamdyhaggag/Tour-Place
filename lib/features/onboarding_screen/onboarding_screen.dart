import 'package:circular_progress_button/circular_progress_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_place/core/constant/app_color.dart';
import 'package:tour_place/features/auth/signin_screen.dart';
import 'package:tour_place/features/auth/signup_screen.dart';
import 'package:tour_place/features/onboarding_screen/step_progress_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<String> onboardingImages = [
    "assets/images/onboard1.svg",
    "assets/images/onboard2.svg",
    "assets/images/onboard3.svg",
  ];
  int currentStep = 1;
  final int totalSteps = 3;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Onboarding Screen',
      child: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: const Color(0xFFFDFDFD),
            ),
            constraints: const BoxConstraints(maxWidth: 480),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24, right: 16),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => const SignupScreen(),
                            ),
                            (route) => false);
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          color: Color(0xFF2A2A2A),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 29),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          onboardingImages[currentStep - 1],
                          width: 294,
                          height: 342,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 28),
                        const Text(
                          'Explore The World With TourPlace',
                          style: TextStyle(
                            color: Color(0xFF2A2A2A),
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            letterSpacing: 0.24,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 28),
                        const Text(
                          'Lorem ipsum dolor sit amet consectetur. Mi ultricies ultrices fermentum a. Duis neque lectus pharetra ac sed lorem.',
                          style: TextStyle(
                            color: Color(0xFF696969),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                            height: 1.57,
                          ),
                        ),
                        const SizedBox(height: 48),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            StepProgressIndicator(
                                totalSteps: totalSteps,
                                currentStep: currentStep),
                            CircularProgressButton(
                              theme: ProgressButtonTheme(
                                progressColor: AppColor.kPrimaryColor,
                                backgroundColor:
                                AppColor.kPrimaryColor.withOpacity(0.2),
                                strokeWidth: 10,
                                size: 75,
                                iconSize: 50,
                                icon: Icons.navigate_next,
                              ),
                              onTap: () {
                                if (currentStep == totalSteps) {
                                  Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SigninScreen(),
                                    ),
                                    (route) => false,
                                  );
                                }
                                setState(() {
                                  if (currentStep < totalSteps) {
                                    currentStep++;
                                  }
                                });
                              },
                              animationDuration:
                                  const Duration(milliseconds: 1000),
                              currentStep: 1,
                              totalSteps: 3,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
