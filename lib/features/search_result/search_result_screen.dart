import 'package:flutter/material.dart';
import 'package:tour_place/features/common/custom_appbar.dart';

import 'components/hotel_card.dart';
import 'components/search_filter.dart';

class SearchResultsScreen extends StatelessWidget {
  const SearchResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Search Results Screen',
      child: Scaffold(
        backgroundColor: const Color(0xFFFDFDFD),
        appBar: CustomAppbar(
            leading: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(Icons.arrow_back_ios)),
            title: 'Search Result',
            actions: null),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SearchFilter(),
                  const SizedBox(height: 24),
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
      ),
    );
  }
}
