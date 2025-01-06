import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_place/core/constant/app_color.dart';

class PlaceCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String location;
  final double rating;
  final bool isSaved;

  const PlaceCard({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.location,
    required this.rating,
    required this.isSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 20,
            offset: const Offset(4, 8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(17),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(imagePath),
            ),
            const SizedBox(width: 11),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2A2A2A),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/map.svg',
                        width: 13,
                        height: 13,
                        color: Color(0xFF9D9D9D),
                      ),
                      const SizedBox(width: 2),
                      Text(
                        location,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF9D9D9D),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/star.svg',
                        width: 15,
                        height: 15,
                        color: AppColor.kPrimaryColor,
                      ),
                      const SizedBox(width: 3),
                      Text(
                        rating.toString(),
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF2A2A2A),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            isSaved
                ? SvgPicture.asset(
                    'assets/images/saved.svg',
                    width: 20,
                    height: 20,
                  )
                : SvgPicture.asset(
                    'assets/images/unsave.svg',
                    width: 20,
                    height: 20,
                  ),
          ],
        ),
      ),
    );
  }
}
