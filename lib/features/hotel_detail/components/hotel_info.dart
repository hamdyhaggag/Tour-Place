import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_place/core/constant/app_color.dart';

class HotelInfo extends StatelessWidget {
  const HotelInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hotel Niribili',
                  style: TextStyle(
                    color: Color(0xFF2A2A2A),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/map.svg',
                      width: 16,
                      height: 16,
                      color: Color(0xFF9D9D9D),
                    ),
                    SizedBox(width: 2),
                    Text(
                      "Cox's Bazar, Bangladesh",
                      style: TextStyle(
                        color: Color(0xFF9D9D9D),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\$85',
                  style: TextStyle(
                    color: Color(0xFF2A2A2A),
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '(For 01 Night/Room)',
                  style: TextStyle(
                    color: Color(0xFF696969),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            SvgPicture.asset(
              'assets/images/star.svg',
              width: 16,
              height: 16,
              color: AppColor.kPrimaryColor,
            ),
            SizedBox(width: 3),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFF75D37),
                ),
                children: [
                  TextSpan(text: '4.4 '),
                  TextSpan(
                    text: '(',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF9D9D9D),
                    ),
                  ),
                  TextSpan(text: '150 Reviews'),
                  TextSpan(
                    text: ')',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF9D9D9D),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
