import 'package:flutter/material.dart';
import 'package:flutter_coffe_shop/pages/home/widgets/bottom_carousel.dart';
import 'package:flutter_coffe_shop/pages/home/widgets/custom_appbar.dart';
import 'package:flutter_coffe_shop/pages/home/widgets/list_widget.dart';
import 'package:flutter_coffe_shop/pages/home/widgets/search_bar_widget.dart';
import 'package:flutter_coffe_shop/shared/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: [
          const CustomAppbar(),
          Positioned(
            right: -200,
            top: 320,
            child: Container(
              width: 300,
              height: 300,
              decoration: const BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: -120,
            left: -120,
            child: Container(
              width: 250,
              height: 250,
              decoration: const BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 95,
              bottom: 50,
            ),
            child: ListView(
              clipBehavior: Clip.none,
              children: [
                const Text(
                  "Find the best\ncoffee for you",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 16),
                const SearchBarWidget(),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Chip(
                      label: Text("Coffes"),
                      backgroundColor: secondaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                    ),
                    Chip(
                      label: Text("Popular"),
                      backgroundColor: secondaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                    ),
                    Chip(
                      label: Text("Drinks"),
                      backgroundColor: secondaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                    ),
                    Chip(
                      label: Text("Cookies"),
                      backgroundColor: secondaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                ListWidget(coffes: coffeModelsTest),
                const SizedBox(height: 22),
                const BottomCarousel()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
