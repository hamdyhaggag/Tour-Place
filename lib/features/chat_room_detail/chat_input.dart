import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
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
          SvgPicture.asset(
            'assets/images/link.svg',
            width: 28,
            height: 28,
          ),
          SizedBox(
            width: 8,
          ),
          SvgPicture.asset(
            'assets/images/emoji.svg',
            width: 28,
            height: 28,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Enter your text here',
                hintStyle: TextStyle(
                  color: Color(0xFFD1D1D1),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(width: 20),
          SvgPicture.asset(
            'assets/images/send.svg',
            width: 35,
            height: 35,
          ),
        ],
      ),
    );
  }
}
