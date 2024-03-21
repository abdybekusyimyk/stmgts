import 'package:app_itc/theme/custom/color/app_color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CyrclButton extends StatelessWidget {
  CyrclButton(
      {super.key,
      required this.icon,
      required this.begin,
      required this.end,
      required this.onTap});

  final IconData icon;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: const [AppColors.white, AppColors.blue, AppColors.blue],
            begin: begin,
            end: end,
          ),
        ),
        child: Icon(
          icon,
          size: 36,
          color: AppColors.white,
        ),
      ),
    );
  }
}
