import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_place/core/constant/app_color.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 54,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
            Positioned(
              bottom: 1,
              right: 1,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        50,
                      ),
                    ),
                    color: AppColor.kPrimaryColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(2, 4),
                        color: Colors.black.withOpacity(
                          0.3,
                        ),
                        blurRadius: 3,
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: SvgPicture.asset(
                    'assets/images/edit.svg',
                    width: 16,
                    height: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Text(
          'Raju Ahamed',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xFF000000),
            letterSpacing: 0.2,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/premium_user.png',
                width: 24, height: 24),
            const SizedBox(width: 6),
            const Text(
              'Premium User',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF9D9D9D),
                letterSpacing: 0.16,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF2A2A2A),
              letterSpacing: 0.14,
            ),
            children: [
              TextSpan(
                text: 'My Address: ',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              TextSpan(text: 'Uttara, Dhaka - 1230'),
            ],
          ),
        ),
      ],
    );
  }
}
