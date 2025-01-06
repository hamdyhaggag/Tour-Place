import 'package:flutter/material.dart';
import 'package:tour_place/features/auth/components/custom_textfield.dart';
import 'package:tour_place/features/auth/signup_success.dart';
import '../common/custom_button.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        const SizedBox(height: 16),
        const Text(
          'Confirm new password',
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
        const SizedBox(height: 28),
        SizedBox(
          width: double.infinity,
          child: CustomButton(
            text: 'Submit',
            onPressed: () => Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => SignUpSuccessScreen(
                  isSignUp: false,
                ),
              ),
              (route) => false,
            ),
          ),
        ),
      ],
    );
  }
}
