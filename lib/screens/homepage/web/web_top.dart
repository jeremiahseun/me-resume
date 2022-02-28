import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:resume/utils/styles.dart';

class WebTop extends StatelessWidget {
  final Animation<double> animation;
  final Function()? onTap;
  const WebTop({Key? key, required this.onTap, required this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Spacer(),
          Expanded(
            flex: 2,
            child: FadeTransition(
              opacity: animation,
              child: CircleAvatar(
                radius: 11.5.w,
                backgroundImage: const AssetImage(
                  'assets/images/jeremiah.png',
                ),
              ),
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SlideTransition(
                  position: animation.drive(Tween(
                      begin: const Offset(0, 0), end: const Offset(0, 1))),
                  child: Text(
                    "MOBILE ENGINEER (FLUTTER)",
                    style: GoogleFonts.ptSansNarrow(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.subText,
                    ),
                  ),
                ),
                const Gap(15),
                SlideTransition(
                  position: animation.drive(Tween(
                      begin: const Offset(1, 0), end: const Offset(0, 0))),
                  child:
                      Text('JEREMIAH ERINOLA', style: AppStyles.titleText(25)),
                ),
                const Gap(20),
                ElevatedButton(
                  onPressed: onTap,
                  child: Text(
                    'CONTACT ME',
                    style: GoogleFonts.ptSansNarrow(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    fixedSize: const Size(220, 60),
                  ),
                ),
              ],
            ),
          ),
          const Gap(60),
        ],
      ),
    );
  }
}
