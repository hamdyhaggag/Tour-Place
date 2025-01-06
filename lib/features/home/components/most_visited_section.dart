import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../hotel_list/hotel_list_screen.dart';

class MostVisitedSection extends StatelessWidget {
  const MostVisitedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Most Visited',
          style: TextStyle(
            color: Color(0xFF2A2A2A),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => HotelListScreen(),
          )),
          child: Container(
            width: 184,
            height: 159,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: AssetImage('assets/images/mountain.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/images/star.svg",
                            width: 11,
                            height: 10,
                            color: Colors.red,
                          ),
                          const SizedBox(width: 1),
                          const Text(
                            '4.7',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/images/save.svg',
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                  Spacer(),
                  const Text(
                    'Kanchenjungha',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/map.svg',
                        width: 10,
                        height: 10,
                      ),
                      const SizedBox(width: 3),
                      const Text(
                        'Rangpur, Bangladesh',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
