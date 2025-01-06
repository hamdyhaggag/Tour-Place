import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_place/core/constant/app_color.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: const Color(0xFFD1D1D1)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/map.svg',
                        width: 18,
                        height: 18,
                        color: AppColor.kPrimaryColor,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Dhaka, Bangladesh',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF2A2A2A),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '25 July to 27 July | 02 Guests | 01 Room',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF2A2A2A),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/edit_map.svg',
                    width: 20,
                    height: 20,
                    color: AppColor.kPrimaryColor,
                  ),
                  Text(
                    'Edit',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/sort.svg',
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 5),
                const Text(
                  'Sort By',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF2A2A2A),
                  ),
                ),
              ],
            ),
            const Text(
              'Price (Low to High)',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFFF75D37),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
