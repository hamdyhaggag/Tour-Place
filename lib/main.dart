import 'package:flutter/material.dart';

import 'features/splash_screen/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Tour Place',
    theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(primary: Colors.white)),
    home: SplashScreen(),
  ));
}
