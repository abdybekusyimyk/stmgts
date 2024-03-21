import 'package:app_itc/components/cyrcl_button.dart';
import 'package:app_itc/theme/custom/color/app_color.dart';
import 'package:app_itc/theme/custom/typography/typography_style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeWorkView extends StatefulWidget {
  const HomeWorkView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<HomeWorkView> createState() => _HomeWorkViewState();
}

class _HomeWorkViewState extends State<HomeWorkView> {
  final carouselcontroller = CarouselController();

  final List<String> images = [
    "images/homework.png",
    "images/homework.png",
    "images/homework.png",
    "images/homework.png",
    "images/homework.png",
    "images/homework.png",
    "images/homework.png",
    "images/homework.png",
    "images/homework.png",
    "images/homework.png"
  ];
  List<Widget> genereteImagesTiles() {
    return images
        .map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              element,
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width,
      height: 750,
      color: AppColors.linerblue,
      child: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Жасалган тиркемелер",
                  style: AppTextStyle.appmenustyleblack40,
                ),
                Row(
                  children: [
                    CyrclButton(
                      onTap: previous,
                      icon: Icons.west,
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                    const SizedBox(width: 40),
                    CyrclButton(
                      onTap: next,
                      icon: Icons.east,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          CarouselSlider(
            carouselController: carouselcontroller,
            items: genereteImagesTiles(),
            options: CarouselOptions(
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy
                  .scale, // borborduk barakty kaisyl ykma meneen chonoitosun
              viewportFraction: 0.3, // page kancha element chygat
              autoPlay: true,
              aspectRatio: 2.5, // biiiktik blildirilet height
            ),
          ),
        ],
      ),
    );
  }

  // baskandagy funcksialar

  void next() =>
      carouselcontroller.nextPage(duration: const Duration(milliseconds: 400));
  void previous() => carouselcontroller.previousPage(
      duration: const Duration(milliseconds: 400));
}
