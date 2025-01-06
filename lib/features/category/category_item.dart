import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_place/core/constant/app_color.dart';

class CategoryItem extends StatelessWidget {
  final String iconPath;
  final String label;

  const CategoryItem({
    super.key,
    required this.iconPath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: '$label category',
      child: Container(
        width: 82,
        height: 82,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 20,
              offset: Offset(4, 8),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 28,
              height: 28,
              color: AppColor.kPrimaryColor,
            ),
            SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF696969),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
