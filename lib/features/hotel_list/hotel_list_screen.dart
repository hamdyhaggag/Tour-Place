import 'package:flutter/material.dart';
import 'package:tour_place/features/common/custom_appbar.dart';
import 'package:tour_place/features/hotel_list/room_card.dart';

class HotelListScreen extends StatelessWidget {
  const HotelListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back_ios)),
          title: 'Select Room',
          actions: null),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 480),
            decoration: BoxDecoration(
              color: const Color(0xFFFDFDFD),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const RoomCard(
                  imagePath: 'assets/images/bedroom.png',
                  roomType: 'Deluxe Double Bed With Balcony',
                  roomCount: '01 Room',
                  guestCount: '02 Guests',
                  smokingStatus: 'Non-Smoking Room',
                  price: 85,
                ),
                const SizedBox(height: 18),
                const RoomCard(
                  imagePath: 'assets/images/bedroom.png',
                  roomType: 'Deluxe Double Bed With Balcony',
                  roomCount: '01 Room',
                  guestCount: '02 Guests',
                  smokingStatus: 'Non-Smoking Room',
                  price: 85,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
