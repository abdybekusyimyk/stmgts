import 'package:app_itc/theme/custom/typography/typography_style.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          "assets/images/logo.png",
          width: 60,
          height: 60,
        ),
        const AppTextMenuText(text: "Үй"),
        const AppTextMenuText(text: "Компания жөнүндө"),
        const AppTextMenuText(text: "Тиркемелер"),
        const AppTextMenuText(text: "Бизин команда"),
        const AppTextMenuText(text: "Бүтүрүүчүлөр"),
        const AppTextMenuText(text: "Суроолор"),
      ],
    );
  }
}

class AppTextMenuText extends StatelessWidget {
  const AppTextMenuText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyle.appmenustyleblack16,
    );
  }
}
