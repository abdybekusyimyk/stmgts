import 'package:app_itc/theme/custom/typography/typography_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OurStudentsView extends StatelessWidget {
  OurStudentsView({
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
            height: 70,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 70),
            child: Text(
              "Биздин бүтүрүүчүлөр",
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
                  .map((e) => Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 370,
                          height: 270,
                          decoration: BoxDecoration(
                              color: const Color(0xffEFEFEF),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1.5, // soften the shadow
                                  spreadRadius: 1.5, //extend the shadow
                                  offset: Offset(
                                    3.0, // Move to right 5  horizontally
                                    2.0, // Move to bottom 5 Vertically
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(35.0)),
                          child: const Padding(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                          AssetImage("images/logo.png"),
                                    ),
                                    Text(
                                      "Nasir jamshed",
                                      style: AppTextStyle.appmenustyleblack20,
                                    )
                                  ],
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "A skill is the learned ability to perform\nan action with determined results with\nxecution often Within given amount ",
                                  style: AppTextStyle.appmenustyleblack16,
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
