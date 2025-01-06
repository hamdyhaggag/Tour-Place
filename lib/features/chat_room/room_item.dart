import 'package:flutter/material.dart';
import 'package:tour_place/features/chat_room_detail/chat_room_detail_screen.dart';

class ChatItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final String message;
  final String time;
  final bool isUnread;

  const ChatItem({
    super.key,
    required this.imagePath,
    required this.name,
    required this.message,
    required this.time,
    required this.isUnread,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ChatDetailsScreen(),
      )),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(imagePath),
            ),
            const SizedBox(width: 8),
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
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: isUnread ? FontWeight.w500 : FontWeight.w400,
                      color: isUnread
                          ? const Color(0xFF2A2A2A)
                          : const Color(0xFF9D9D9D),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9D9D9D),
                  ),
                ),
                const SizedBox(height: 9),
                Text(
                  '12:45 PM',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: isUnread
                        ? const Color(0xFF2A2A2A)
                        : const Color(0xFF9D9D9D),
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
