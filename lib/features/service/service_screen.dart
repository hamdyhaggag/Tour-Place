import 'package:flutter/material.dart';
import 'package:tour_place/features/common/custom_appbar.dart';
import 'package:tour_place/features/search_result/components/hotel_card.dart';

import 'search_bar.dart' as search_bar;
import 'service_button.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  List<bool> isSelectedList = [true, false, false, false];

  void _onServiceButtonTapped(int index) {
    setState(() {
      for (int i = 0; i < isSelectedList.length; i++) {
        isSelectedList[i] = i == index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),
      appBar: CustomAppbar(
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back_ios)),
          title: 'Services',
          actions: null),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ServiceButton(
                        icon: 'assets/services/hotel.svg',
                        label: 'Hotel',
                        isSelected: isSelectedList[0],
                        onTap: () => _onServiceButtonTapped(0),
                      ),
                      SizedBox(width: 15),
                      ServiceButton(
                        icon: 'assets/services/flight.svg',
                        label: 'Flight',
                        isSelected: isSelectedList[1],
                        onTap: () => _onServiceButtonTapped(1),
                      ),
                      SizedBox(width: 15),
                      ServiceButton(
                        icon: 'assets/services/bus.svg',
                        label: 'Bus',
                        isSelected: isSelectedList[2],
                        onTap: () => _onServiceButtonTapped(2),
                      ),
                      SizedBox(width: 15),
                      ServiceButton(
                        icon: 'assets/services/boat.svg',
                        label: 'Boat',
                        isSelected: isSelectedList[3],
                        onTap: () => _onServiceButtonTapped(3),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const search_bar.SearchBar(),
                const SizedBox(height: 16),
                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    HotelCard(
                      name: 'Holy Park Hotel',
                      rating: 4.8,
                      location: "Cox's Bazar",
                      price: 50,
                      isSaved: true,
                      imagePath: 'assets/search/holy_park_hotel.png',
                    ),
                    SizedBox(height: 16),
                    HotelCard(
                      name: 'Dream Valley',
                      rating: 4.5,
                      location: "Cox's Bazar",
                      price: 60,
                      imagePath: 'assets/search/dream_valley.png',
                    ),
                    SizedBox(height: 16),
                    HotelCard(
                      name: 'Esha Hotel',
                      rating: 4.6,
                      location: "Cox's Bazar",
                      price: 75,
                      imagePath: 'assets/search/esha_hotel.png',
                    ),
                    SizedBox(height: 16),
                    HotelCard(
                      name: 'Hotel Niribili',
                      rating: 4.4,
                      location: "Cox's Bazar",
                      price: 85,
                      imagePath: 'assets/search/hotel_niribili.png',
                    ),
                    SizedBox(height: 16),
                    HotelCard(
                      name: 'Luxury Hotel',
                      rating: 4.9,
                      location: "Cox's Bazar",
                      price: 89,
                      imagePath: 'assets/search/luxury_hotel.png',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
