import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_place/features/auth/signin_screen.dart';

class MenuPage extends StatelessWidget {
  VoidCallback onClosed;

  MenuPage({super.key, required this.onClosed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      margin: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0), bottomRight: Radius.circular(20)),
        color: const Color(0xFFFDFDFD),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 19, 24, 33),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: onClosed,
              child: SvgPicture.asset(
                'assets/images/close.svg',
                width: 24,
                height: 24,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 28),
            _buildMenuItem('Upgrade Premium'),
            _buildDivider(),
            _buildMenuItem('Themes'),
            _buildDivider(),
            _buildMenuItem('Extra Services'),
            _buildDivider(),
            _buildMenuItem('Settings'),
            _buildDivider(),
            _buildMenuItem('Customer Support'),
            _buildDivider(),
            _buildMenuItem('Report a Bug'),
            _buildDivider(),
            const SizedBox(height: 16),
            Text(
              'Version 1.0.0',
              style: TextStyle(
                color: const Color(0xFF9D9D9D),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            _buildLogoutButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: const Color(0xFF2A2A2A),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.28,
            ),
          ),
          Icon(
            Icons.navigate_next_outlined,
            size: 25,
            semanticLabel: 'Arrow icon',
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 1,
      color: const Color(0xFFD1D1D1),
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => SigninScreen(),
          ),
          (route) => false,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFF6F6F6),
          shadowColor: Colors.transparent,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Logout',
              style: TextStyle(
                color: const Color(0xFF2A2A2A),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 20),
            Icon(
              Icons.navigate_next_outlined,
              size: 25,
              color: const Color(0xFF2A2A2A),
              semanticLabel: 'Logout icon',
            ),
          ],
        ),
      ),
    );
  }
}
