import 'package:app_itc/theme/custom/typography/typography_style.dart';
import 'package:flutter/material.dart';

class QuestionView extends StatelessWidget {
  const QuestionView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 800,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 25),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 40),
            const Text(
              "Көп суралуучу суроолор",
              style: AppTextStyle.appmenustyleblack40,
            ),
            const SizedBox(height: 60),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "How to inroll course? ",
                          style: AppTextStyle.appmenustyleblack16,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              shape: const RoundedRectangleBorder(
                                //<-- SEE HERE
                                side: BorderSide(
                                  color: Color(0xffEFEFEF),
                                ),
                              ),
                              child: Container(
                                color: const Color(0xffEFEFEF),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 3.5, horizontal: 8),
                                child: const Text(
                                  'Ans',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              """Our designers and engineers know collaboration is the  essence of any project It’s a simple\nphilosophy we followed  for nearly two decades philosophy we followed\nfor nearly two decades...""",
                              style: AppTextStyle.appmenustyleblack16,
                              textAlign: TextAlign.start,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 35),
                    const Divider(),
                    const SizedBox(height: 20),
                  ],
                );
              },
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                Text(
                  "Still have a question?",
                  style: AppTextStyle.appmenustyleblack14,
                ),
                SizedBox(width: 5),
                Text(
                  "Ask your question here",
                  style: TextStyle(color: Colors.red, fontSize: 14),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
