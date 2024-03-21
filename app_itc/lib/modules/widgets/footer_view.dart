import 'package:app_itc/theme/custom/color/app_color.dart';
import 'package:app_itc/theme/custom/typography/typography_style.dart';
import 'package:flutter/material.dart';

class FooterView extends StatelessWidget {
  const FooterView({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 70),
      width: size.width,
      height: size.height / 1.48,
      color: AppColors.blue,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
        child: Column(
          children: [
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "images/logolight.png",
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "A skill is the learned ability to perform\nan action with determined results with\nExecution often Within given amount ",
                      style: AppTextStyle.appmenustylewhite14,
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/twiter.png"),
                        const SizedBox(width: 25),
                        Image.asset("images/instagram.png"),
                        const SizedBox(width: 25),
                        Image.asset("images/linkending.png"),
                      ],
                    )
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Quick Link", style: AppTextStyle.appmenustylewhite18),
                    SizedBox(height: 20),
                    Text(
                      "FAQ’s",
                      style: AppTextStyle.appmenustylewhite14,
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Privacy Policy",
                      style: AppTextStyle.appmenustylewhite14,
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Term & Conditions",
                      style: AppTextStyle.appmenustylewhite14,
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Support",
                      style: AppTextStyle.appmenustylewhite14,
                    ),
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Contact Us", style: AppTextStyle.appmenustylewhite18),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_sharp,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Shekhertake8, mohammadpur,Dhaka.",
                          style: AppTextStyle.appmenustylewhite14,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "+880123456789",
                          style: AppTextStyle.appmenustylewhite14,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "example@gmail.com",
                          style: AppTextStyle.appmenustylewhite14,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 40),
            const Divider(
              color: Colors.white,
            ),
            const SizedBox(height: 35),
            const Text(
              "© 2023 App ITC | All rights reserved.",
              style: AppTextStyle.appmenustylewhite14,
            ),
          ],
        ),
      ),
    );
  }
}
