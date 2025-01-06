import 'package:flutter/material.dart';

class HotelImage extends StatelessWidget {
  const HotelImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/hotel_detail.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: 300,
          semanticLabel: 'Hotel exterior image',
        ),
      ],
    );
  }
}
