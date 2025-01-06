import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xFFD1D1D1)),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 17,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/images/search.svg',
            width: 24,
            height: 24,
            color: Color(0xFF9D9D9D),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Search any hotels...',
                hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF9D9D9D),
                ),
                border: InputBorder.none,
              ),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF2A2A2A),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
