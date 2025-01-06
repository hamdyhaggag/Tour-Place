import 'package:flutter/material.dart';
import 'package:tour_place/features/common/custom_appbar.dart';

import 'components/about_section.dart';
import 'components/facilities_section.dart';
import 'components/hotel_image.dart';
import 'components/hotel_info.dart';
import 'components/select_room_button.dart';

class HotelDetailsScreen extends StatelessWidget {
  const HotelDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back_ios)),
          title: 'Hotel Detail',
          actions: null),
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(maxWidth: 480),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Color(0xFFFDFDFD),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HotelImage(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HotelInfo(),
                    SizedBox(height: 24),
                    AboutSection(),
                    SizedBox(height: 24),
                    FacilitiesSection(),
                    SizedBox(height: 24),
                    SelectRoomButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
