import 'package:flutter/material.dart';

import 'notification_item.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              _buildDateLabel('Today'),
              const SizedBox(height: 6),
              NotificationItem(
                icon: 'assets/services/hotel.svg',
                title: 'Hotel Booking',
                description:
                    'Lorem ipsum dolor sit amet this for the consectetur. Suspendisse quam...',
                time: '12:45 PM',
                date: 'August 12, 2023',
              ),
              const SizedBox(height: 16),
              NotificationItem(
                icon: 'assets/services/flight.svg',
                title: 'Flight Booking',
                description:
                    'Lorem ipsum dolor sit amet this for the consectetur. Suspendisse quam...',
                time: '12:45 PM',
                date: 'August 12, 2023',
              ),
              const SizedBox(height: 16),
              _buildDateLabel('Yesterday'),
              const SizedBox(height: 6),
              NotificationItem(
                icon: 'assets/services/map.svg',
                title: 'App Update',
                description:
                    'Lorem ipsum dolor sit amet this for the consectetur. Suspendisse quam...',
                time: '03:45 PM',
                date: 'August 11, 2023',
              ),
              const SizedBox(height: 16),
              NotificationItem(
                icon: 'assets/services/flight.svg',
                title: 'Flight Booking',
                description:
                    'Lorem ipsum dolor sit amet this for the consectetur. Suspendisse quam...',
                time: '12:45 PM',
                date: 'August 11, 2023',
              ),
              const SizedBox(height: 16),
              NotificationItem(
                icon: 'assets/services/hotel.svg',
                title: 'Hotel Booking',
                description:
                    'Lorem ipsum dolor sit amet this for the consectetur. Suspendisse quam...',
                time: '12:45 PM',
                date: 'August 11, 2023',
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDateLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 36.0),
      child: Text(
        label,
        style: const TextStyle(
          color: Color(0xFF9D9D9D),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
