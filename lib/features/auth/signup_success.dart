import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_place/features/auth/signin_screen.dart';

import '../common/main_screen.dart';

class SignUpSuccessScreen extends StatelessWidget {
  final bool isSignUp;
  const SignUpSuccessScreen({super.key, this.isSignUp = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 480),
            padding: const EdgeInsets.symmetric(vertical: 271, horizontal: 37),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: const Color(0xFFFDFDFD),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/congratulation.svg',
                  width: 234,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 31),
                Text(
                  "You're all set!",
                  style: TextStyle(
                    color: const Color(0xFF2A2A2A),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.2,
                  ),
                  semanticsLabel: "You're all set!",
                ),
                const SizedBox(height: 44),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) =>
                            isSignUp ? MainScreen() : SigninScreen(),
                      ),
                      (route) => false,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF75D37),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 17, horizontal: 70),
                  ),
                  child: const Text(
                    "Let's Begin",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
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
