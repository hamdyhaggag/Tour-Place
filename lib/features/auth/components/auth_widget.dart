import 'package:flutter/material.dart';
import 'package:tour_place/core/constant/app_color.dart';
import 'package:tour_place/features/auth/signin_screen.dart';
import 'package:tour_place/features/auth/signup_screen.dart';
import 'package:tour_place/features/common/custom_appbar.dart';
import '../../common/main_screen.dart';
import '../../forgot_password/forgot_password_screen.dart';
import '../../common/custom_button.dart';
import 'custom_textfield.dart';
import 'social_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthWidget extends StatelessWidget {
  final bool isSignIn;
  final String title;
  final String buttonText;
  final VoidCallback onPressed;

  const AuthWidget({
    required this.isSignIn,
    required this.title,
    required this.buttonText,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(leading: null, title: title, actions: [
        IconButton(
          onPressed: () {},
          icon: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xFFF75D37)),
            ),
            child: const Text(
              'English',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFFF75D37),
              ),
            ),
          ),
        )
      ]),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 72),
                SvgPicture.asset(
                  'assets/images/logo.svg',
                  height: 60,
                ),
                const SizedBox(height: 36),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Enter your mobile number',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const CustomTextField(
                        label: 'Numberphone',
                        hintText: '+201154012345',
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Enter your password',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const CustomTextField(
                        label: 'Password',
                        hintText: '●●●●●●●●',
                        isPassword: true,
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: CustomButton(
                          text: buttonText,
                          onPressed: onPressed,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        minimumSize: Size(50, 30),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => const ForgotPasswordScreen(),
                          ),
                          (route) => false,
                        );
                      },
                      child: const Text(
                        'Are you forgot password?',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColor.kDescriptionTextColor,
                        ),
                      )),
                ),
                _buildSignInLink(context, isSignIn),
                const SizedBox(height: 16),
                const Text(
                  'or',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 16),
                SocialButton(
                  text: 'Continue with Google',
                  icon: 'assets/images/google.svg',
                  onPressed: () {
                    // TODO: Implement Google sign-in
                  },
                ),
                const SizedBox(height: 16),
                SocialButton(
                  text: 'Continue with Facebook',
                  icon: 'assets/images/facebook.svg',
                  onPressed: () {
                    // TODO: Implement Facebook sign-in
                  },
                ),
                const SizedBox(height: 16),
                const Text(
                  'or',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ));
                  },
                  child: const Text(
                    'Continue as Guest',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                      decoration: TextDecoration.underline,
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

  Widget _buildSignInLink(BuildContext context, bool isSignIn) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (isSignIn) ...[
          const Text(
            'Don’t have an account? ',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size(50, 30),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const SignupScreen(),
                    ),
                    (route) => false);
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFF75D37),
                ),
              ))
        ] else ...[
          const Text(
            'Already have an account? ',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size(50, 30),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const SigninScreen(),
                  ),
                  (route) => false,
                );
              },
              child: const Text(
                'Sign In',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFF75D37),
                ),
              ))
        ]
      ],
    );
  }
}
