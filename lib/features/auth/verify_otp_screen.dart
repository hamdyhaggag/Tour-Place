import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_place/features/auth/signup_success.dart';
import 'package:tour_place/features/reset_password/reset_password_screen.dart';

class VerifyOtpScreen extends StatefulWidget {
  final String phoneNumber;
  final bool isResetPass;

  const VerifyOtpScreen(
      {super.key, required this.phoneNumber, this.isResetPass = false});

  @override
  VerifyOtpScreenState createState() => VerifyOtpScreenState();
}

class VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final List<TextEditingController> _otpControllers =
      List.generate(4, (index) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (index) => FocusNode());

  late Timer _timer;
  int _remainingSeconds = 12;

  bool _canResendOtp = false;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  @override
  void dispose() {
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    _timer.cancel(); // Stop the timer when the widget is disposed
    super.dispose();
  }

  // Start countdown
  void _startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
        });
      } else {
        setState(() {
          _canResendOtp = true; // Enable the Resend OTP button when time is up
        });
        _timer.cancel(); // Stop the timer when it reaches 0
      }
    });
  }

  // Reset the countdown to 12 seconds
  void _resetCountdown() {
    setState(() {
      _remainingSeconds = 12;
      _canResendOtp = false; // Disable the Resend OTP button
    });
    _startCountdown(); // Start the countdown again
  }

  // Format the time as MM:SS
  String _formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _verifyOtp() {
    String otp = _otpControllers.map((controller) => controller.text).join();
    // Implement OTP verification logic here
    if (kDebugMode) {
      print('Verifying OTP: $otp');
    }
    if (widget.isResetPass) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ResetPasswordScreen(),
        ),
      );
    } else {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => SignUpSuccessScreen(),
        ),
        (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined),
            onPressed: () => Navigator.of(context).pop()),
        title: const Text(
          'Verify',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF2A2A2A),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 50, 38, 118),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 42),
                  SvgPicture.asset('assets/images/verifyOTP.svg',
                      width: 240, height: 240),
                  const SizedBox(height: 50),
                  const Text(
                    'Enter OTP',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2A2A2A),
                      letterSpacing: 0.24,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'An 4 digit OTP has been sent to',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF696969),
                      letterSpacing: 0.14,
                      height: 2,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    widget.phoneNumber,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2A2A2A),
                      letterSpacing: 0.42,
                      height: 2,
                    ),
                  ),
                  const SizedBox(height: 49),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      4,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.5),
                        child: SizedBox(
                          width: 56,
                          height: 52,
                          child: TextFormField(
                            controller: _otpControllers[index],
                            focusNode: _focusNodes[index],
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xFFD1D1D1)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xFFD1D1D1)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xFFF75D37)),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            onChanged: (value) {
                              if (value.length == 1 && index < 3) {
                                FocusScope.of(context)
                                    .requestFocus(_focusNodes[index + 1]);
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _verifyOtp,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF75D37),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      minimumSize: const Size(300, 54),
                    ),
                    child: const Text(
                      'Verify',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          if (_canResendOtp) {
                            _resetCountdown();
                          }
                        },
                        child: Text(
                          'Resend OTP',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color:
                                _canResendOtp ? Color(0xFFF75D37) : Colors.grey,
                            letterSpacing: 0.32,
                          ),
                        ),
                      ),
                      Text(
                        "'(${_formatTime(_remainingSeconds)})'",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF9D9D9D),
                          letterSpacing: 0.32,
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
