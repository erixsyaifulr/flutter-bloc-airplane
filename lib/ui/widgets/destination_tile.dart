import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class DestinationTile extends StatelessWidget {
  final String title;
  final String city;
  final String imageUrl;
  final double rating;

  const DestinationTile({
    Key? key,
    required this.title,
    required this.city,
    required this.imageUrl,
    this.rating = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ThemeManager.whiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageUrl),
              ),
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: ThemeManager.blackTextStyle
                      .copyWith(fontSize: 18, fontWeight: ThemeManager.medium),
                ),
                const SizedBox(height: 5),
                Text(
                  city,
                  style: ThemeManager.blackTextStyle
                      .copyWith(fontWeight: ThemeManager.light),
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
                rating.toString(),
                style: ThemeManager.blackTextStyle
                    .copyWith(fontWeight: ThemeManager.medium),
              )
            ],
          )
        ],
      ),
    );
  }
}
