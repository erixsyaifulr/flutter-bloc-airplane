import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/detail_destination_item_photo.dart';
import 'package:flutter/material.dart';

class DestinationDetail extends StatelessWidget {
  const DestinationDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/destinations/image1.png"),
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: const EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                ThemeManager.whiteColor.withOpacity(0),
                ThemeManager.blackColor.withOpacity(0.95),
              ]),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(
            top: 30,
            left: ThemeManager.defaultMargin,
            right: ThemeManager.defaultMargin),
        child: Column(
          children: [
            //Note : emblem
            Container(
              width: 108,
              height: 84,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icons/icon_emblem.png"),
                ),
              ),
            ),

            //Note : title
            Container(
              margin: const EdgeInsets.only(top: 240),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lake Ciliwung",
                          style: ThemeManager.whiteTextStyle.copyWith(
                              fontSize: 24, fontWeight: ThemeManager.semiBold),
                        ),
                        Text(
                          "Tangerang",
                          style: ThemeManager.whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: ThemeManager.light),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/icons/icon_star.png"),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "4,5",
                        style: ThemeManager.whiteTextStyle
                            .copyWith(fontWeight: ThemeManager.medium),
                      )
                    ],
                  )
                ],
              ),
            ),

            //Note :description
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                color: ThemeManager.whiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: ThemeManager.blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: ThemeManager.semiBold),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.",
                    style: ThemeManager.blackTextStyle.copyWith(height: 2),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Photos",
                    style: ThemeManager.blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: ThemeManager.semiBold),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: const [
                      DetailDestinationItemPhoto(
                          imageUrl: "assets/destinations/image_photo1.png"),
                      DetailDestinationItemPhoto(
                          imageUrl: "assets/destinations/image_photo2.png"),
                      DetailDestinationItemPhoto(
                          imageUrl: "assets/destinations/image_photo3.png"),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: ThemeManager.backgroundColor,
      body: Stack(children: [
        backgroundImage(),
        customShadow(),
        content(),
      ]),
    );
  }
}
