import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_place/core/constant/app_color.dart';

class HotelCard extends StatelessWidget {
  final String name;
  final double rating;
  final String location;
  final int price;
  final bool isSaved;
  final String imagePath;

  const HotelCard({
    super.key,
    required this.name,
    required this.rating,
    required this.location,
    required this.price,
    this.isSaved = false,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(4, 8),
          ),
        ],
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              child: Image.asset(
                imagePath,
                width: 101,
                height: 107,
                fit: BoxFit.cover,
                semanticLabel: '$name hotel image',
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
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
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/map.svg',
                          width: 15,
                          height: 15,
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
                        Text(
                          '\$$price',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF2A2A2A),
                          ),
                        ),
                        const SizedBox(width: 3),
                        const Text(
                          '/Room/Night',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF696969),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12, right: 12),
                  child: isSaved == true
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
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12, right: 12.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement booking functionality
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF75D37),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 13, vertical: 6),
                    ),
                    child: const Text(
                      'Book Now',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
