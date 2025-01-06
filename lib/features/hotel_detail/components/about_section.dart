import 'package:flutter/material.dart';
import 'package:tour_place/core/constant/app_color.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: TextStyle(
            color: Color(0xFF2A2A2A),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 6),
        RichText(
          text: TextSpan(
            style: TextStyle(
              color: AppColor.kDescriptionTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              height: 1.5,
            ),
            children: [
              TextSpan(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, arcu dictumst habitant vel ut et pellentesque. Ut in egestas blandit netus in scelerisque. Eget lectus ultrices pellentesque id. ',
              ),
              TextSpan(
                text: 'Read More...',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFF75D37),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
