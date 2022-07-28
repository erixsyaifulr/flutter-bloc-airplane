import 'package:airplane/shared/routes.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: const EdgeInsets.all(ThemeManager.defaultMargin),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/image_card.png"),
          ),
          boxShadow: [
            BoxShadow(
              color: ThemeManager.primaryColor.withOpacity(0.5),
              blurRadius: 50,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: ThemeManager.whiteTextStyle.copyWith(
                          fontWeight: ThemeManager.light,
                        ),
                      ),
                      Text(
                        "Erix Syaiful Rohman",
                        style: ThemeManager.whiteTextStyle.copyWith(
                          fontWeight: ThemeManager.medium,
                          fontSize: 20,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 6),
                  width: 24,
                  height: 24,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/icons/icon_plane.png"),
                    ),
                  ),
                ),
                Text(
                  "Pay",
                  style: ThemeManager.whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: ThemeManager.medium,
                  ),
                )
              ],
            ),
            const SizedBox(height: 40),
            Text(
              "Balance",
              style: ThemeManager.whiteTextStyle.copyWith(
                fontWeight: ThemeManager.light,
              ),
            ),
            Text(
              "Rp 200.000.000",
              style: ThemeManager.whiteTextStyle.copyWith(
                fontSize: 26,
                fontWeight: ThemeManager.medium,
              ),
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 80),
        child: Text(
          "Big Bonus 🎉",
          style: ThemeManager.blackTextStyle.copyWith(
            fontSize: 32,
            fontWeight: ThemeManager.semiBold,
          ),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text(
          "We give you early credit so that\nyou can buy a flight ticket",
          style: ThemeManager.greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: ThemeManager.light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startButton() {
      return CustomButton(
        buttonText: "Start Fly Now",
        margin: const EdgeInsets.only(top: 50),
        buttonWidth: 220,
        onPress: () {
          Navigator.pushNamed(context, Routes.main);
        },
      );
    }

    return Scaffold(
      backgroundColor: ThemeManager.backgroundColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          bonusCard(),
          title(),
          subtitle(),
          startButton(),
        ],
      )),
    );
  }
}
