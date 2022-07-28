import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/home/home_page.dart';
import 'package:airplane/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return const HomePage();
    }

    Widget bottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: const EdgeInsets.only(bottom: 30, left: 24, right: 24),
          decoration: BoxDecoration(
            color: ThemeManager.whiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomBottomNavigationItem(
                  imageUrl: "assets/bottom_navigations/icon_world.png",
                  isSelected: true),
              CustomBottomNavigationItem(
                  imageUrl: "assets/bottom_navigations/icon_booking.png"),
              CustomBottomNavigationItem(
                  imageUrl: "assets/bottom_navigations/icon_card.png"),
              CustomBottomNavigationItem(
                  imageUrl: "assets/bottom_navigations/icon_setting.png"),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: ThemeManager.backgroundColor,
      body: Stack(
        children: [
          buildContent(),
          bottomNavigation(),
        ],
      ),
    );
  }
}
