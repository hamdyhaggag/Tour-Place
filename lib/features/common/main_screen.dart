import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tour_place/core/constant/app_color.dart';
import 'package:tour_place/features/chat_room/chat_room_screen.dart';
import 'package:tour_place/features/notification/notification_screen.dart';
import 'package:tour_place/features/saved/saved_screen.dart';

import '../home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const SavedScreen(),
    const NotificationScreen(),
    const ChatRoomScreen(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _currentIndex == 0
          ? null
          : AppBar(
              title: _getAppBarTitle(),
              centerTitle: true,
            ),
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: _screens,
        ),
      ),
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _getAppBarTitle() {
    TextStyle defaultStyle = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Color(0xFF2A2A2A),
    );

    switch (_currentIndex) {
      case 0:
        return PreferredSize(
            preferredSize: Size.fromHeight(0), child: AppBar(elevation: 0));
      case 1:
        return _buildTitle('Saved', defaultStyle);
      case 2:
        return _buildTitle('Notification', defaultStyle);
      default:
        return _buildTitle('Chat', defaultStyle);
    }
  }

  Widget _buildTitle(String title, TextStyle style) {
    return Text(
      title,
      style: style,
    );
  }

  Widget _buildBottomNavigation() {
    return BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/bottom_navigator/home.svg',
                width: 28,
                height: 28,
              ),
              activeIcon: SvgPicture.asset(
                'assets/bottom_navigator/home_active.svg',
                width: 28,
                height: 28,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/bottom_navigator/save.svg',
                width: 28,
                height: 28,
              ),
              activeIcon: SvgPicture.asset(
                'assets/bottom_navigator/save_active.svg',
                width: 28,
                height: 28,
              ),
              label: 'Saved'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/bottom_navigator/notification.svg',
                width: 28,
                height: 28,
              ),
              activeIcon: SvgPicture.asset(
                'assets/bottom_navigator/notification_active.svg',
                width: 28,
                height: 28,
              ),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/bottom_navigator/chat.svg',
                width: 28,
                height: 28,
              ),
              activeIcon: SvgPicture.asset(
                'assets/bottom_navigator/chat_active.svg',
                width: 28,
                height: 28,
              ),
              label: 'Chat'),
        ],
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(fontSize: 11),
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(fontSize: 11),
        selectedItemColor: AppColor.kPrimaryColor,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        });
  }

  Widget buildBottomButton(int index, String iconPath, double size) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: SvgPicture.asset(
        iconPath,
        color: Colors.white,
        width: size,
        height: size,
      ),
    );
  }
}
