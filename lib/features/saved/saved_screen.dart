import 'package:flutter/material.dart';
import 'place_card.dart';
import 'event_card.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 480),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                _buildPlacesSection(),
                const SizedBox(height: 24),
                _buildEventsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPlacesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Places',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF2A2A2A),
          ),
        ),
        const SizedBox(height: 16),
        PlaceCard(
          imagePath: 'assets/saved/sajek_valley.png',
          name: 'Sajek Valley',
          location: 'Bandarban, Bangladesh',
          rating: 4.5,
          isSaved: true,
        ),
        const SizedBox(height: 16),
        PlaceCard(
          imagePath: 'assets/saved/saint_martins.png',
          name: "Saint Martin's Island",
          location: "Cox's Bazar, Bangladesh",
          rating: 4.7,
          isSaved: false,
        ),
        const SizedBox(height: 16),
        PlaceCard(
          imagePath: 'assets/saved/tajhat_jamidar.png',
          name: 'Tajhat Jamidar Bari',
          location: 'Rangpur, Bangladesh',
          rating: 4.4,
          isSaved: false,
        ),
      ],
    );
  }

  Widget _buildEventsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Events',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF2A2A2A),
          ),
        ),
        const SizedBox(height: 16),
        EventCard(
          imagePath: 'assets/saved/kaptai_lake.png',
          name: 'Kaptai Lake Tour 2022',
          location: 'Rangpur, Bangladesh',
          participantsCount: 12,
          isSaved: true,
        ),
        const SizedBox(height: 16),
        EventCard(
          imagePath: 'assets/saved/sonargaon.png',
          name: 'Sonargaon Tour 2022',
          location: 'Narayanganj, Bangladesh',
          participantsCount: 20,
          isSaved: false,
        ),
        const SizedBox(height: 15),
        EventCard(
          imagePath: 'assets/saved/jaflong.png',
          name: 'Jaflong Tour 2022',
          location: 'Sylhet, Bangladesh',
          participantsCount: 15,
          isSaved: false,
        ),
      ],
    );
  }
}
