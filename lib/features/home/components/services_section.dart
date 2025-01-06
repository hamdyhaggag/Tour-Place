import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Services',
          style: TextStyle(
            color: Color(0xFF2A2A2A),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            _buildServiceItem('Hotel', 'assets/services/hotel.svg',
                isSelected: true),
            const SizedBox(width: 15),
            _buildServiceItem('Flight', 'assets/services/flight.svg'),
            const SizedBox(width: 15),
            _buildServiceItem('Bus', 'assets/services/bus.svg'),
            const SizedBox(width: 15),
            _buildServiceItem('Boat', 'assets/services/boat.svg'),
          ],
        ),
      ],
    );
  }

  Widget _buildServiceItem(String label, String iconUrl,
      {bool isSelected = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isSelected ? const Color(0xFFF75D37) : Colors.white,
        boxShadow: [
          if (!isSelected)
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 20,
              offset: const Offset(4, 8),
            ),
        ],
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            iconUrl,
            width: 12,
            height: 12,
            color: isSelected ? Colors.white : null,
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : const Color(0xFF696969),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
