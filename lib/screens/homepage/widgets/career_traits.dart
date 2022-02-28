import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_layout_builder/responsive_layout_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:resume/utils/styles.dart';

class CareerTraits extends StatelessWidget {
  const CareerTraits({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
        defaultSize: LayoutSize.desktop,
        builder: (context, size) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("CAREER TRAITS",
                style: size.size == LayoutSize.desktop &&
                            size.orientation == Orientation.landscape
                        ? AppStyles.subText(12.sp)
                            .copyWith(color: AppColors.subText)
                        : AppStyles.subText(11.5.sp)
                            .copyWith(color: AppColors.subText)),
            const Gap(10),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Designer - ",
                      style: size.size == LayoutSize.desktop &&
                            size.orientation == Orientation.landscape
                        ? AppStyles.normalText()
                        : AppStyles.normalText(size: 14.5.sp)
                          .copyWith(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          "Design should be treated as a living organism, guided by the environment it lives as a whole.",
                      style: size.size == LayoutSize.desktop &&
                            size.orientation == Orientation.landscape
                        ? AppStyles.normalText()
                        : AppStyles.normalText(size: 14.5.sp)),
                ],
              ),
            ),
            const Gap(25),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "User Focused - ",
                      style: size.size == LayoutSize.desktop &&
                            size.orientation == Orientation.landscape
                        ? AppStyles.normalText()
                        : AppStyles.normalText(size: 14.5.sp)
                          .copyWith(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          "I pay close attention to the user's needs and wants, and strive to create a product that is intuitive and easy to use.\n Launch, learn & iterate/",
                      style: size.size == LayoutSize.desktop &&
                            size.orientation == Orientation.landscape
                        ? AppStyles.normalText()
                        : AppStyles.normalText(size: 14.5.sp)),
                ],
              ),
            ),
            const Gap(25),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Proactive Evolution - ",
                      style: size.size == LayoutSize.desktop &&
                            size.orientation == Orientation.landscape
                        ? AppStyles.normalText()
                        : AppStyles.normalText(size: 14.5.sp)
                          .copyWith(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          "Curiousity and a desire to learn constantly broadens my skill set, enabling me to wear many hats at once.",
                      style: size.size == LayoutSize.desktop &&
                            size.orientation == Orientation.landscape
                        ? AppStyles.normalText()
                        : AppStyles.normalText(size: 14.5.sp)),
                ],
              ),
            ),
            const Gap(25),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Bold, yet practical - ",
                      style: size.size == LayoutSize.desktop &&
                            size.orientation == Orientation.landscape
                        ? AppStyles.normalText()
                        : AppStyles.normalText(size: 14.5.sp)
                          .copyWith(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          "I know when to push the boundaries vs. when to embrace simplicity to meet multiple deadlines.",
                      style: size.size == LayoutSize.desktop &&
                            size.orientation == Orientation.landscape
                        ? AppStyles.normalText()
                        : AppStyles.normalText(size: 14.5.sp)),
                ],
              ),
            ),
          ],
        );
      }
    );
  }
}