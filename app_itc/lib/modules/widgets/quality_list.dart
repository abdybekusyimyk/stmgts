// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_itc/theme/custom/typography/typography_style.dart';
import 'package:flutter/material.dart';

import 'package:app_itc/theme/custom/color/app_color.dart';

// ignore: must_be_immutable
class QualityList extends StatelessWidget {
  QualityList({Key? key, required this.size}) : super(key: key);

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
    return Container(
      width: size.width,
      height: 240,
      color: AppColors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: qualitylist
            .map(
              (e) => const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "33k+",
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontFamily: "Inter",
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "data",
                    style: AppTextStyle.appmenustylewhite20,
                  )
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
