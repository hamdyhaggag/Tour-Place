import 'package:flutter/material.dart';
import 'package:tour_place/features/auth/verify_otp_screen.dart';

import 'components/auth_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthWidget(
      isSignIn: false,
      title: 'Sign Up',
      buttonText: 'Sign Up',
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VerifyOtpScreen(phoneNumber: '00000000'),
        ));
      },
    );
  }
}
