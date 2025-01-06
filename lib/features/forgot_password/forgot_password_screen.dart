import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_place/features/auth/verify_otp_screen.dart';
import 'package:tour_place/features/common/custom_appbar.dart';
import '../common/custom_button.dart';
import 'components/phone_input.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  String phoneNumber = '';
  bool isPhoneValid = false;

  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Dynamic padding based on screen width
    final horizontalPadding = screenWidth * 0.05;
    final verticalPadding = screenHeight * 0.02;

    // Dynamic image size
    final imageWidth = screenWidth * 0.6;
    final imageHeight = screenHeight * 0.25;

    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),
      appBar: CustomAppbar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: 'Forgot Password',
        actions: null,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/forgot_password.svg',
                width: imageWidth,
                height: imageHeight,
              ),
              SizedBox(height: screenHeight * 0.08),
              Text(
                'Forgot Password?',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: const Color(0xFF2A2A2A),
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.24,
                      fontSize: screenWidth * 0.06,
                    ),
              ),
              const SizedBox(height: 10),
              Text(
                "Don't worry! It happens. Please enter the phone number associated with your account.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: const Color(0xFF696969),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.14,
                      fontSize: screenWidth * 0.045,
                    ),
              ),
              SizedBox(height: screenHeight * 0.08),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter your mobile number',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: const Color(0xFF2A2A2A),
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth * 0.045,
                      ),
                ),
              ),
              const SizedBox(height: 8),
              PhoneInput(
                onPhoneChanged: (phone) {
                  setState(() {
                    phoneNumber = phone;
                    if (kDebugMode) {
                      print(phoneNumber);
                    }
                  });
                },
                onPhoneValidationChanged: (isValid) {
                  setState(() {
                    isPhoneValid = isValid;
                  });
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: screenWidth * 0.9,
                child: CustomButton(
                  onPressed: () {
                    if (isPhoneValid && phoneNumber.isNotEmpty) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => VerifyOtpScreen(
                            phoneNumber: phoneNumber,
                            isResetPass: true,
                          ),
                        ),
                      );
                    }
                  },
                  text: 'Send OTP Code',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
