import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_place/features/hotel_detail/hodel_detail_screen.dart';

class RoomCard extends StatelessWidget {
  final String imagePath;
  final String roomType;
  final String roomCount;
  final String guestCount;
  final String smokingStatus;
  final int price;

  const RoomCard({
    Key? key,
    required this.imagePath,
    required this.roomType,
    required this.roomCount,
    required this.guestCount,
    required this.smokingStatus,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HotelDetailsScreen(),
      )),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              offset: const Offset(4, 8),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
                semanticLabel: 'Room image',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    roomType,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2A2A2A),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildInfoRow('assets/images/room.svg', roomCount),
                            const SizedBox(height: 4),
                            _buildInfoRow('assets/images/user.svg', guestCount),
                            const SizedBox(height: 4),
                            _buildInfoRow(
                                'assets/images/smoking.svg', smokingStatus),
                            const SizedBox(height: 13),
                            InkWell(
                              onTap: () {
                                // Handle view more details
                              },
                              child: Row(
                                children: const [
                                  Text(
                                    'View More Details',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF2A2A2A),
                                    ),
                                  ),
                                  SizedBox(width: 3),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                    color: Color(0xFF2A2A2A),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '\$$price',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF2A2A2A),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            '(For 01 Night/Room)',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF696969),
                            ),
                          ),
                          const SizedBox(height: 35),
                          ElevatedButton(
                            onPressed: () {
                              // Handle room selection
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFF75D37),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 8,
                              ),
                            ),
                            child: const Text(
                              'Select Room',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String iconPath, String text) {
    return Row(
      children: [
        SvgPicture.asset(
          iconPath,
          width: 24,
          height: 24,
        ),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF696969),
          ),
        ),
      ],
    );
  }
}
