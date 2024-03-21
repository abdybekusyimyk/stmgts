// import 'package:app_itc/components/cyrcl_button.dart';
import 'package:app_itc/modules/widgets/about_us.dart';
import 'package:app_itc/modules/widgets/auth_view.dart';
import 'package:app_itc/modules/widgets/footer_view.dart';
import 'package:app_itc/modules/widgets/home_work_view.dart';
import 'package:app_itc/modules/widgets/our_command.dart';
import 'package:app_itc/modules/widgets/our_students_view.dart';
import 'package:app_itc/modules/widgets/quality_list.dart';
import 'package:app_itc/modules/widgets/question_view.dart';
// import 'package:app_itc/theme/custom/color/app_color.dart';
// import 'package:app_itc/theme/custom/color/app_color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            AuthView(size: size),
            QualityList(size: size),
            AboutUs(size: size),
            HomeWorkView(size: size),
            OurCommandView(size: size),
            OurStudentsView(size: size),
            QuestionView(size: size),
            FooterView(size: size)
          ],
        ),
      ),
    );
  }
}
