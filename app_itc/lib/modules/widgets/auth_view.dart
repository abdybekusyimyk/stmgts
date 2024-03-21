import 'package:app_itc/modules/widgets/app_bar_widget.dart';
import 'package:app_itc/theme/custom/color/app_color.dart';
import 'package:app_itc/theme/custom/typography/typography_style.dart';
import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height,
      child: Stack(
        // clipBehavior: Clip.none,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: size.width, // 1.8,
              height: double.infinity,
              decoration: const BoxDecoration(
                  // color: Colors.red, shape: BoxShape.circle
                  // borderRadius: BorderRadius.only(
                  // topLeft: Radius.circular(300),
                  // bottomLeft: Radius.circular(100)
                  // bottomLeft: Radius.circular(280) ,
                  // ),
                  // gradient: LinearGradient(
                  //   colors: [
                  //     Color(0xFFC7E2EF),
                  //     AppColors.linerblue,
                  //   ],
                  // ),
                  // color: AppColors.linerblue,
                  ),
            ),
          ),
          // ClipPath(
          //   clipper: CustomClipPath(),
          //   child: Container(
          //     width: size.width / 2.2,
          //     height: double.infinity,
          //     decoration: const BoxDecoration(
          //       color: Colors.red,
          //       borderRadius: BorderRadius.only(
          //           // topLeft: Radius.circular(280),
          //           // bottomRight: Radius.circular(500),
          //           ),
          //     ),
          //   ),
          // ),
          Column(
            children: [
              const SizedBox(height: 30),
              const AppBarWidget(),
              const Spacer(flex: 2),
              const Text(
                "Курс тууралуу кызыктуу\n тема жазгыла",
                textAlign: TextAlign.center,
                style: AppTextStyle.bigtext,
              ),
              const Spacer(),
              const Text(
                "Not all mentors are created equal. The best mentors share some \n Qualities. You’ll want to look for these attributes",
                style: AppTextStyle.appmenustyleblack16,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.blue,
                  foregroundColor: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  minimumSize: const Size(270, 70),
                ),
                child: const Text(
                  "Жазылуу",
                  style: AppTextStyle.appmenustylewhite18,
                ),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();
    path.lineTo(0, h);
    path.quadraticBezierTo(w * 43, h - 34, w * 0.5, h - 9.8);

    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
