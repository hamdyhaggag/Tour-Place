import 'package:flutter/material.dart';

import 'chat_input.dart';
import 'message_bubble.dart';

class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back_ios)),
        title: Text(
          'Ahmed Samir',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF2A2A2A),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color(0xFFFDFDFD),
          ),
          constraints: const BoxConstraints(maxWidth: 480),
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: const [
                    MessageBubble(
                      text: 'Hey Ahmed, did you hear about the trip next week?',
                      isMe: false,
                      time: '12:45 PM',
                    ),
                    MessageBubble(
                      text: 'Yes, Omar told me! Are you coming?',
                      isMe: true,
                      time: '12:44 PM',
                    ),
                    MessageBubble(
                      text:
                          'Of course! I’ve been waiting for it. Let’s make it unforgettable!',
                      isMe: false,
                      time: '12:43 PM',
                    ),
                    MessageBubble(
                      text:
                          'Definitely! I’ll bring my camera to capture some great moments.',
                      isMe: true,
                      time: '12:35 PM',
                    ),
                    MessageBubble(
                      text:
                          'Did you check the weather forecast? Hope it’s sunny.',
                      isMe: false,
                      time: '12:30 PM',
                    ),
                    MessageBubble(
                      text: 'Yeah, it looks perfect! No rain expected.',
                      isMe: true,
                      time: '12:28 PM',
                    ),
                    MessageBubble(
                      text: 'Great! Let’s plan the activities in advance.',
                      isMe: false,
                      time: '12:25 PM',
                    ),
                    MessageBubble(
                      text:
                          'Absolutely! I’ll create a list and share it with everyone.',
                      isMe: true,
                      time: '12:20 PM',
                    ),
                  ],
                ),
              ),
              const ChatInput(),
            ],
          ),
        ),
      ),
    );
  }
}
