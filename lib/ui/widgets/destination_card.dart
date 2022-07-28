import 'package:airplane/shared/routes.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/home/destination_detail.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  final String title;
  final String city;
  final String imageUrl;
  final double rating;

  const DestinationCard({
    Key? key,
    required this.title,
    required this.city,
    required this.imageUrl,
    this.rating = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DestinationDetail(),
          ),
        );
      },
      child: Container(
        width: 200,
        height: 323,
        margin: const EdgeInsets.only(left: ThemeManager.defaulRadius),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: ThemeManager.whiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 180,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 55,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: ThemeManager.whiteColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                    ),
                  ),
                  child: Row(
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
                        rating.toString(),
                        style: ThemeManager.blackTextStyle
                            .copyWith(fontWeight: ThemeManager.medium),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: ThemeManager.blackTextStyle.copyWith(
                        fontWeight: ThemeManager.semiBold, fontSize: 18),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    city,
                    style: ThemeManager.greyTextStyle
                        .copyWith(fontWeight: ThemeManager.medium),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
