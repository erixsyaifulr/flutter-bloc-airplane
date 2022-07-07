import 'package:airplane/shared/theme.dart';
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
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  width: 220,
                  height: 55,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: ThemeManager.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      "Get Started",
                      style: ThemeManager.whiteTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: ThemeManager.medium,
                      ),
                    ),
                  ),
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
