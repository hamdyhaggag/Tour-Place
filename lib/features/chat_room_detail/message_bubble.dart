import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isMe;
  final String time;

  const MessageBubble({
    super.key,
    required this.text,
    required this.isMe,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment:
                isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              if (!isMe)
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(isMe
                        ? 'https://cdn.builder.io/api/v1/image/assets/TEMP/32eda67599f60f984442c67a31ea5b2101acc67f82ae60ee435949c153b011d2?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772'
                        : 'https://cdn.builder.io/api/v1/image/assets/TEMP/32cfc22abde6755650ebd9244ad6b7ba34fca3e10f13e235d4816d7ba7e4c760?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772'),
                    radius: 24,
                  ),
                ),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: isMe
                        ? const Color(0xFFF75D37)
                        : const Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    text,
                    style: TextStyle(
                      color: isMe ? Colors.white : const Color(0xFF696969),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              if (isMe)
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(isMe
                        ? 'https://cdn.builder.io/api/v1/image/assets/TEMP/32eda67599f60f984442c67a31ea5b2101acc67f82ae60ee435949c153b011d2?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772'
                        : 'https://cdn.builder.io/api/v1/image/assets/TEMP/32cfc22abde6755650ebd9244ad6b7ba34fca3e10f13e235d4816d7ba7e4c760?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772'),
                    radius: 24,
                  ),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              time,
              style: const TextStyle(
                color: Color(0xFF9D9D9D),
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
