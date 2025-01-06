import 'package:flutter/material.dart';
import 'package:tour_place/features/auth/components/auth_widget.dart';

import '../common/main_screen.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthWidget(
      isSignIn: true,
      title: 'Sign In',
      buttonText: 'Sign in',
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const MainScreen(),
        ));
      },
    );
  }
}
