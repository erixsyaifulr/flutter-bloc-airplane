import 'dart:async';

import 'package:airplane/shared/routes.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/get_started/get_started_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, Routes.getStarted);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeManager.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(bottom: 50),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icons/icon_plane.png"),
                ),
              ),
            ),
            Text(
              "AIRPLANE",
              style: ThemeManager.whiteTextStyle.copyWith(
                fontSize: 30,
                fontWeight: ThemeManager.medium,
                letterSpacing: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
