import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_place/core/constant/app_color.dart';
import 'package:tour_place/features/home/components/glass_menu_button.dart';
import 'package:tour_place/features/menu/menu_page.dart';
import 'package:tour_place/features/profile/profile_screen.dart';

import 'components/categories_section.dart';
import 'components/most_visited_section.dart';
import 'components/search_section.dart';
import 'components/services_section.dart';
import 'components/top_events_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color(0xFFFDFDFD),
                  ),
                  constraints: const BoxConstraints(maxWidth: 480),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 204,
                          width: double.infinity,
                          padding:
                              EdgeInsets.only(top: 36, left: 12, right: 12),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/banner.png')),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GlassMenuButton(
                                width: 55,
                                height: 55,
                                onPressed: () {
                                  _scaffoldKey.currentState?.openDrawer();
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 64.0),
                                child: SvgPicture.asset(
                                    'assets/images/slogan.svg'),
                              ),
                              CircleAvatar(
                                radius: 36,
                                backgroundImage: AssetImage(
                                    'assets/people/mohamed_tarek.png'),
                                child: GestureDetector(
                                  onTap: () => Navigator.of(context)
                                      .push(MaterialPageRoute(
                                    builder: (context) => ProfileScreen(),
                                  )),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: AppColor.kSecondColor,
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(16, 24, 16, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CategoriesSection(),
                            SizedBox(height: 24),
                            MostVisitedSection(),
                            SizedBox(height: 24),
                            ServicesSection(),
                            SizedBox(height: 24),
                            TopEventsSection(),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        height: 96,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(top: 170, left: 0, right: 0, child: SearchSection())
              ],
            ),
          ],
        ),
      ),
      drawer: MenuPage(
        onClosed: () => _scaffoldKey.currentState?.closeDrawer(),
      ),
    );
  }
}
