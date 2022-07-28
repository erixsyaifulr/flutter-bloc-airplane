import 'package:airplane/shared/routes.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          "Join us and get\nyour next journey",
          style: ThemeManager.blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: ThemeManager.semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return const CustomFormField(
          label: "Full Name",
          hintText: "Your full name",
        );
      }

      Widget emailInput() {
        return const CustomFormField(
          label: "Email address",
          hintText: "Your email address",
        );
      }

      Widget passwordInput() {
        return const CustomFormField(
          label: "Password",
          hintText: "Your password",
          obsecureText: true,
        );
      }

      Widget hobbyInput() {
        return const CustomFormField(
          label: "Hobby",
          hintText: "Your hobby",
        );
      }

      Widget submitButton() {
        return CustomButton(
          buttonText: "Get Started",
          onPress: () {
            Navigator.pushNamed(context, Routes.bonus);
          },
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: ThemeManager.whiteColor,
          borderRadius: BorderRadius.circular(ThemeManager.defaulRadius),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 50, bottom: 70),
        child: Text(
          "Terms and Condition",
          style: ThemeManager.greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: ThemeManager.light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: ThemeManager.backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: ThemeManager.defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
