import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          left: ThemeManager.defaultMargin,
          right: ThemeManager.defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Howdy,\nErix Syaiful Rohman",
                    style: ThemeManager.blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: ThemeManager.semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Where to fly today",
                    style: ThemeManager.greenTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: ThemeManager.light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/icons/icon_profile.png"),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              DestinationCard(
                  title: "Lake Ciliwung",
                  city: "Tangerang",
                  imageUrl: "assets/destinations/image1.png",
                  rating: 40),
              DestinationCard(
                  title: "White Houses",
                  city: "Monaco",
                  imageUrl: "assets/destinations/image2.png",
                  rating: 4.6),
              DestinationCard(
                  title: "Hill Hey",
                  city: "Singapore",
                  imageUrl: "assets/destinations/image3.png",
                  rating: 4.8),
              DestinationCard(
                title: "Klentheng",
                city: "Japan",
                imageUrl: "assets/destinations/image4.png",
                rating: 4.7,
              )
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: const EdgeInsets.only(
            top: 20,
            left: ThemeManager.defaulRadius,
            right: ThemeManager.defaulRadius,
            bottom: 140),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New This Year",
              style: ThemeManager.blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: ThemeManager.semiBold,
              ),
            ),
            const DestinationTile(
                title: "Danau Berantan",
                city: "Singaraja",
                imageUrl: "assets/destinations/image5.png",
                rating: 4.5),
            const DestinationTile(
                title: "Roma",
                city: "Italy",
                imageUrl: "assets/destinations/image6.png",
                rating: 4.6),
            const DestinationTile(
                title: "Payung Teduh",
                city: "Singapore",
                imageUrl: "assets/destinations/image7.png",
                rating: 4.7),
            const DestinationTile(
                title: "Hill Hey",
                city: "Monaco",
                imageUrl: "assets/destinations/image8.png",
                rating: 4.8),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
        newDestinations(),
      ],
    );
  }
}
