import 'package:flutter/material.dart';
import 'package:tour_place/features/chat_room/search_bar.dart';

import 'chat_list.dart';
import 'conversation_tab.dart';

class ChatRoomScreen extends StatelessWidget {
  const ChatRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),
      body: SafeArea(
        child: Column(
          children: [
            const ConversationTab(),
            const SearchChatSection(),
            SizedBox(
              height: 8,
            ),
            const Expanded(child: ChatList()),
          ],
        ),
      ),
    );
  }
}
