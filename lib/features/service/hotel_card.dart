import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HotelCard extends StatelessWidget {
  final String image;
  final String name;
  final double rating;
  final String location;
  final int price;

  const HotelCard({
    super.key,
    required this.image,
    required this.name,
    required this.rating,
    required this.location,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(4, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
            child: Image.asset(
              image,
              width: 101,
              height: 107,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(13),
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
                        'assets/icons/star.svg',
                        width: 15,
                        height: 14,
                        color: const Color(0xFFF75D37),
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
                        'assets/icons/location.svg',
                        width: 13,
                        height: 13,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/heart.svg',
                  width: 20,
                  height: 20,
                ),
                onPressed: () {},
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF75D37),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
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
            ],
          ),
          const SizedBox(width: 11),
        ],
      ),
    );
  }
}
