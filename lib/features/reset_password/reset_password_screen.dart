import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_place/features/reset_password/reset_password_form.dart';

import '../common/custom_appbar.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),
      appBar: CustomAppbar(
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back_ios)),
          title: 'Reset',
          actions: null),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/reset_password.svg',
                width: 294,
                height: 342,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 12),
              Text(
                'Reset Your Password',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.24,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                'Now you can reset your old password',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: const Color(0xFF696969),
                      letterSpacing: 0.14,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              const ResetPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}
