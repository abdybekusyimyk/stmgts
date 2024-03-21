import 'package:app_itc/theme/custom/typography/typography_style.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: size.width,
      height: 750,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "images/frend.jpg",
            width: 520,
            height: 520,
          ),
          const SizedBox(width: 50),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(radius: 8, backgroundColor: Colors.black54),
                  SizedBox(width: 20),
                  Text(
                    "Биз жөнүндө",
                    style: AppTextStyle.appmenustyleblack40,
                  )
                ],
              ),
              SizedBox(height: 40),
              Text(
                "Not all mentors are created equal. The best mentors share some important\nsQualities. You’ll want to look for these attributes in anyone you’re thinking \nAbout building a mentor-mentee relationship with. And if you’re\nlooking to be a better mentor yourself, these qualities are worth noting.",
                style: AppTextStyle.appmenustyleblack16,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 40),
              Text(
                "Not all mentors are created equal. The best mentors share some important\nQualities. You’ll want to look for these attributes in anyone you’re thinking\nAbout building a mentor-mentee relationship with. And if you’re\nlooking to be a better mentor yourself, ",
                style: AppTextStyle.appmenustyleblack16,
                textAlign: TextAlign.start,
              ),
            ],
          )
        ],
      ),
    );
  }
}
