import 'package:airplane/shared/routes.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image_bg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Fly Like a Birds",
                  style: ThemeManager.whiteTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: ThemeManager.semiBold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Explore new with us and let\nyourself get an amazing experiences",
                  style: ThemeManager.whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: ThemeManager.light,
                  ),
                  textAlign: TextAlign.center,
                ),
                CustomButton(
                  buttonText: "Get Started",
                  buttonWidth: 220,
                  margin: const EdgeInsets.only(top: 50, bottom: 50),
                  onPress: () {
                    Navigator.pushNamed(context, Routes.signUp);
                  },
                ),
                const SizedBox(height: 30),
              ],
            ),
          )
        ],
      ),
    );
  }
}
