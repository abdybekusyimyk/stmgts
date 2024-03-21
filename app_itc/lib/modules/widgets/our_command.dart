// import 'package:app_itc/theme/custom/color/app_color.dart';
import 'package:app_itc/theme/custom/typography/typography_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OurCommandView extends StatelessWidget {
  OurCommandView({
    super.key,
    required this.size,
  });

  final Size size;

  List qualitylist = [
    {
      "quality": "33k+",
      "name": "Студенттер",
    },
    {
      "quality": "2k+",
      "name": "Сын-пикирлер",
    },
    {
      "quality": "150+",
      "name": "Меторлор",
    },
    {
      "quality": "620+",
      "name": "Курстар",
    },
    {
      "quality": "20k+",
      "name": "Сабактар",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 650,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 70),
            child: Text(
              "Биздин команда",
              style: AppTextStyle.appmenustyleblack40,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              children: qualitylist
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 280,
                            height: 340,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.3, color: Colors.black38),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "images/frend.jpg",
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            "Tafhim Hasan ",
                            style: AppTextStyle.appmenustyleblack20,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Web Developer",
                            style: AppTextStyle.appmenustyleblack14,
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
