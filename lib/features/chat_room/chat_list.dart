import 'package:flutter/material.dart';
import 'package:tour_place/features/chat_room/room_item.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: const [
        ChatItem(
          imagePath: 'assets/people/ahmed_samir.png',
          name: 'Ahmed Samir',
          message: 'Hey Mohamed, how have you been? I miss you!',
          time: 'Today, 3:45 PM',
          isUnread: true,
        ),
        ChatItem(
          imagePath: 'assets/people/mohamed_tarek.png',
          name: 'Mohamed Tarek',
          message: 'What’s up?',
          time: 'Yesterday, 11:30 AM',
          isUnread: false,
        ),
        ChatItem(
          imagePath: 'assets/people/hasan_ali.png',
          name: 'Hasan_Ali',
          message: 'Do you have time to meet tomorrow?',
          time: 'Jan 3, 2:15 PM',
          isUnread: false,
        ),
        ChatItem(
          imagePath: 'assets/people/youssef_adel.png',
          name: 'Youssef Adel',
          message: 'Thanks for your help, buddy!',
          time: 'Jan 2, 7:50 PM',
          isUnread: true,
        ),
        ChatItem(
          imagePath: 'assets/people/kareem_saad.png',
          name: 'Kareem Saad',
          message: 'I’m almost done with work. Let’s talk later?',
          time: 'Jan 1, 5:10 PM',
          isUnread: false,
        ),
        ChatItem(
          imagePath: 'assets/people/mustafa_hassan.png',
          name: 'Mustafa Hassan',
          message: 'Where have you been?',
          time: 'Dec 31, 9:00 AM',
          isUnread: false,
        ),
        ChatItem(
          imagePath: 'assets/people/amr_shokry.png',
          name: 'Amr Shokry',
          message: 'Good evening, my friend!',
          time: 'Dec 30, 8:45 PM',
          isUnread: false,
        ),
        ChatItem(
          imagePath: 'assets/people/mohab_wael.png',
          name: 'Mohab Wael',
          message: 'Happy New Year, my friend! 🎉',
          time: 'Dec 29, 10:20 AM',
          isUnread: false,
        ),
      ],
    );
  }
}
