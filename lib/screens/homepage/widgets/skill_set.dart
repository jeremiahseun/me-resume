import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_layout_builder/responsive_layout_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:resume/utils/styles.dart';

class Skillset extends StatelessWidget {
  const Skillset({
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
                Text("SKILLSET",
                    style: size.size == LayoutSize.desktop ||
                            size.orientation == Orientation.landscape
                        ? AppStyles.subText(12.sp)
                            .copyWith(color: AppColors.subText)
                        : AppStyles.subText(20.sp)
                            .copyWith(color: AppColors.subText)),
                const Gap(10),
                Text("Graphics Designer",
                    style: size.size == LayoutSize.desktop ||
                            size.orientation == Orientation.landscape
                        ? AppStyles.normalText()
                        : AppStyles.normalText(size: 18.sp)),
                const Gap(5),
                Text("Mobile Engineer",
                    style: size.size == LayoutSize.desktop ||
                            size.orientation == Orientation.landscape
                        ? AppStyles.normalText()
                        : AppStyles.normalText(size: 18.sp)),
                const Gap(5),
                Text("Wordpress Website Designer",
                    style: size.size == LayoutSize.desktop ||
                            size.orientation == Orientation.landscape
                        ? AppStyles.normalText()
                        : AppStyles.normalText(size: 18.sp)),
                const Gap(5),
                Text("UX / Prototyping",
                    style: size.size == LayoutSize.desktop ||
                            size.orientation == Orientation.landscape
                        ? AppStyles.normalText()
                        : AppStyles.normalText(size: 18.sp)),
                const Gap(5),
                Text("Leadership",
                    style: size.size == LayoutSize.desktop ||
                            size.orientation == Orientation.landscape
                        ? AppStyles.normalText()
                        : AppStyles.normalText(size: 18.sp)),
              ]);
        });
  }
}
