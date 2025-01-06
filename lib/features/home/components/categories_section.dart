import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_place/features/category/categories_screen.dart';
import 'package:tour_place/features/service/service_screen.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Categories',
              style: TextStyle(
                color: Color(0xFF2A2A2A),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CategoriesScreen(),
              )),
              child: Text(
                'See All',
                style: TextStyle(
                  color: Color(0xFFF75D37),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            _buildCategoryItem(
                context, 'Mountains', 'assets/categories/mountain.svg'),
            const SizedBox(width: 17),
            _buildCategoryItem(context, 'Beach', 'assets/categories/beach.svg'),
            const SizedBox(width: 17),
            _buildCategoryItem(context, 'Lakes', 'assets/categories/lake.svg'),
            const SizedBox(width: 17),
            _buildCategoryItem(context, 'Camp', 'assets/categories/camp.svg'),
          ],
        ),
      ],
    );
  }

  Widget _buildCategoryItem(
      BuildContext context, String label, String imageUrl) {
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ServicesScreen(),
      )),
      child: Container(
        width: 73,
        height: 73,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 20,
              offset: const Offset(4, 8),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imageUrl,
              width: 28,
              height: 28,
              color: Colors.red,
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                color: Color(0xFF696969),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
