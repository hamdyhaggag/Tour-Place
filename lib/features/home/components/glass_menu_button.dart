import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMenuButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double width;
  final double height;
  final double borderRadius;
  final Color overlayColor;

  const GlassMenuButton({
    super.key,
    required this.onPressed,
    this.width = 60.0,
    this.height = 60.0,
    this.borderRadius = 15.0,
    this.overlayColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Stack(
          children: [
            // Blur effect
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10.0,
                sigmaY: 10.0,
              ),
              child: Container(),
            ),
            // Glass overlay
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                border: Border.all(
                  color: overlayColor.withOpacity(0.2),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    overlayColor.withOpacity(0.2),
                    overlayColor.withOpacity(0.1),
                  ],
                ),
              ),
            ),
            // Button with icon
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onPressed,
                child: Center(
                  child: Icon(
                    Icons.menu,
                    color: overlayColor.withOpacity(0.9),
                    size: 24.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
