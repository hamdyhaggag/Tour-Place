import 'package:flutter/material.dart';
import 'package:tour_place/features/common/custom_appbar.dart';

import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final crossAxisCount = MediaQuery.of(context).size.width ~/ 120;

    return Semantics(
      label: 'Categories Screen',
      child: Scaffold(
        backgroundColor: const Color(0xFFFDFDFD),
        appBar: CustomAppbar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: 'Categories',
          actions: null,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: GridView.builder(
              itemCount: _categories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                final category = _categories[index];
                return CategoryItem(
                  iconPath: category['iconPath']!,
                  label: category['label']!,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

const List<Map<String, String>> _categories = [
  {'iconPath': 'assets/categories/mountain.svg', 'label': 'Mountains'},
  {'iconPath': 'assets/categories/beach.svg', 'label': 'Beach'},
  {'iconPath': 'assets/categories/lake.svg', 'label': 'Lake'},
  {'iconPath': 'assets/categories/camp.svg', 'label': 'Camp'},
  {'iconPath': 'assets/categories/camp.svg', 'label': 'Camp'},
  {'iconPath': 'assets/categories/mountain.svg', 'label': 'Mountains'},
  {'iconPath': 'assets/categories/beach.svg', 'label': 'Beach'},
  {'iconPath': 'assets/categories/lake.svg', 'label': 'Lake'},
  {'iconPath': 'assets/categories/lake.svg', 'label': 'Lake'},
  {'iconPath': 'assets/categories/camp.svg', 'label': 'Camp'},
  {'iconPath': 'assets/categories/mountain.svg', 'label': 'Mountains'},
  {'iconPath': 'assets/categories/beach.svg', 'label': 'Beach'},
  {'iconPath': 'assets/categories/beach.svg', 'label': 'Beach'},
  {'iconPath': 'assets/categories/lake.svg', 'label': 'Lake'},
  {'iconPath': 'assets/categories/camp.svg', 'label': 'Camp'},
  {'iconPath': 'assets/categories/mountain.svg', 'label': 'Mountains'},
  {'iconPath': 'assets/categories/mountain.svg', 'label': 'Mountains'},
  {'iconPath': 'assets/categories/beach.svg', 'label': 'Beach'},
  {'iconPath': 'assets/categories/lake.svg', 'label': 'Lake'},
  {'iconPath': 'assets/categories/camp.svg', 'label': 'Camp'},
  {'iconPath': 'assets/categories/camp.svg', 'label': 'Camp'},
  {'iconPath': 'assets/categories/mountain.svg', 'label': 'Mountains'},
  {'iconPath': 'assets/categories/beach.svg', 'label': 'Beach'},
  {'iconPath': 'assets/categories/lake.svg', 'label': 'Lake'},
];
