import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_place/core/constant/app_color.dart';

class ServiceButton extends StatelessWidget {
  final String icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const ServiceButton({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? AppColor.kPrimaryColor : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (!isSelected)
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 20,
                offset: const Offset(4, 8),
              ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 12,
              height: 12,
              color: isSelected ? Colors.white : AppColor.kPrimaryColor,
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: isSelected ? Colors.white : AppColor.kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
