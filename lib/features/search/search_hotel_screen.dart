import 'package:flutter/material.dart';

import '../common/custom_appbar.dart';
import 'components/date_input.dart';
import 'components/guest_room_input.dart';
import 'components/location_input.dart';
import 'components/search_button.dart';

class SearchHotelScreen extends StatelessWidget {
  const SearchHotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back_ios)),
          title: 'Search Hotel',
          actions: null),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                const LocationInput(),
                const SizedBox(height: 24),
                Row(
                  children: const [
                    Expanded(child: DateInput(label: 'Check In')),
                    SizedBox(width: 15),
                    Expanded(child: DateInput(label: 'Check Out')),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: const [
                    Expanded(child: GuestRoomInput(label: 'Guests')),
                    SizedBox(width: 15),
                    Expanded(child: GuestRoomInput(label: 'Rooms')),
                  ],
                ),
                const SizedBox(height: 36),
                const SearchButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
