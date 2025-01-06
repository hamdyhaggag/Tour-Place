import 'package:flutter/material.dart';

class TopEventsSection extends StatelessWidget {
  const TopEventsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Top Events',
          style: TextStyle(
            color: Color(0xFF2A2A2A),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'See All',
          style: TextStyle(
            color: Color(0xFFF75D37),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
