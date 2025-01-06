import 'package:flutter/material.dart';
import 'package:tour_place/features/common/custom_appbar.dart';

import 'components/profile_info.dart';
import 'components/profile_menu_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),
      appBar: CustomAppbar(
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back_ios)),
          title: 'My Profile',
          actions: null),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const SizedBox(height: 16),
                const ProfileInfo(),
                const SizedBox(height: 24),
                ProfileMenuItem(
                  icon: 'assets/images/edit.svg',
                  title: 'Edit profile',
                  onTap: () {
                    // Handle edit profile tap
                  },
                ),
                const SizedBox(height: 16),
                ProfileMenuItem(
                  icon: 'assets/images/track_bookings.svg',
                  title: 'Track My Bookings',
                  onTap: () {
                    // Handle track bookings tap
                  },
                ),
                const SizedBox(height: 16),
                ProfileMenuItem(
                  icon: 'assets/images/history.svg',
                  title: 'My History',
                  onTap: () {
                    // Handle history tap
                  },
                ),
                const SizedBox(height: 16),
                ProfileMenuItem(
                  icon: 'assets/images/packing_tips.svg',
                  title: 'Packing Tips',
                  onTap: () {
                    // Handle packing tips tap
                  },
                ),
                const SizedBox(height: 16),
                ProfileMenuItem(
                  icon: 'assets/images/payment_method.svg',
                  title: 'Payment Method',
                  onTap: () {
                    // Handle payment method tap
                  },
                ),
                const SizedBox(height: 16),
                ProfileMenuItem(
                  icon: 'assets/images/help_center.svg',
                  title: 'Help Center',
                  onTap: () {
                    // Handle help center tap
                  },
                ),
                const SizedBox(height: 16),
                ProfileMenuItem(
                  icon: 'assets/images/legal_info.svg',
                  title: 'Legal Info',
                  onTap: () {
                    // Handle legal info tap
                  },
                ),
                const SizedBox(height: 48),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
