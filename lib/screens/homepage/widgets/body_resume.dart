import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_layout_builder/responsive_layout_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:resume/utils/styles.dart';

class BodyResume extends StatelessWidget {
  const BodyResume({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(builder: (context, size) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About me',
              style: size.size == LayoutSize.desktop ||
                      size.orientation == Orientation.landscape
                  ? AppStyles.titleText(17)
                  : AppStyles.titleText(21)),
          const Gap(10),
          Text(
            'I am a lover of GOD, music and Technology in general.\nI am a mobile engineer with a passion for building apps that are user-friendly and intuitive. I have a strong background in web development and have worked with a variety of technologies, including Flutter. I am currently open to opportunities.',
            style: size.size == LayoutSize.desktop ||
                    size.orientation == Orientation.landscape
                ? GoogleFonts.ptSansNarrow(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )
                : GoogleFonts.ptSansNarrow(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
          ),
          const Gap(40),
          //? EXPERIENCE TAB
          Container(height: 15, width: 70, color: Colors.deepPurple),
          const Gap(40),
          Text('Experience',
              style: size.size == LayoutSize.desktop ||
                      size.orientation == Orientation.landscape
                  ? AppStyles.titleText(17)
                  : AppStyles.titleText(21)),
          const Gap(10),
          Text('Flutter Developer - HNG Internship'.toUpperCase(),
              style: GoogleFonts.ptSansNarrow(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.subText,
                    )),
          const Gap(5),
          Text(
            'August 2021 - October 2021',
            style: size.size == LayoutSize.desktop ||
                    size.orientation == Orientation.landscape
                ? GoogleFonts.ptSansNarrow(
                    fontSize: 13.5.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )
                : GoogleFonts.ptSansNarrow(
                    fontSize: 15.5.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
          ),
          const Gap(10),
          Text(
            'I joined the Internship and participated in building a mobile app for the HNG Internship. I was responsible for building the UI and implementing the functionality from the backend service. I was also responsible for the GitHub repository and maintaining the codebase and the overall look and feel of the app. I also gave tasks to other interns to complete the app and i monitored as such.',
            style: size.size == LayoutSize.desktop ||
                    size.orientation == Orientation.landscape
                ? GoogleFonts.ptSansNarrow(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  )
                : GoogleFonts.ptSansNarrow(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  ),
          ),
          const Gap(30),
          Text('Flutter Developer - Hotels.ng'.toUpperCase(),
              style: GoogleFonts.ptSansNarrow(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.subText,
                    )),
          const Gap(5),
          Text(
            'October 2021 - Present',
            style: size.size == LayoutSize.desktop ||
                    size.orientation == Orientation.landscape
                ? GoogleFonts.ptSansNarrow(
                    fontSize: 13.5.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )
                : GoogleFonts.ptSansNarrow(
                    fontSize: 15.5.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
          ),
          const Gap(5),
          Text(
            'I am currently working on building a mobile app for hotels.ng. I am responsible for building the UI and implementing the functionality from the backend service. I am also responsible for the GitHub repository and maintaining the codebase and the overall look and feel of the app. I am also building another mobile app which focused beyond the Nigerian market as such.',
            style: size.size == LayoutSize.desktop ||
                    size.orientation == Orientation.landscape
                ? GoogleFonts.ptSansNarrow(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  )
                : GoogleFonts.ptSansNarrow(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  ),
          ),
          const Gap(40),
          //? SKILLS TAB
          Container(height: 15, width: 70, color: Colors.deepPurple),
          const Gap(40),
          Text('Skills',
              style: size.size == LayoutSize.desktop ||
                      size.orientation == Orientation.landscape
                  ? AppStyles.titleText(17)
                  : AppStyles.titleText(21)),
          const Gap(20),
          Text('flutter'.toUpperCase(),
              style: size.size == LayoutSize.desktop ||
                      size.orientation == Orientation.landscape
                  ? GoogleFonts.ptSansNarrow(
                      fontSize: 15.5.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.subText,
                    )
                  : GoogleFonts.ptSansNarrow(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.subText,
                    )),
          const Gap(5),
          Text(
            'Flutter is a framework for building native apps on iOS and Android. It is used to develop apps for iOS and Android. It is a cross-platform framework that allows developers to build applications for iOS, Android, and the web.',
            style: size.size == LayoutSize.desktop ||
                    size.orientation == Orientation.landscape
                ? GoogleFonts.ptSansNarrow(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  )
                : GoogleFonts.ptSansNarrow(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
          ),
          const Gap(30),
          Text('dart'.toUpperCase(),
              style: size.size == LayoutSize.desktop ||
                      size.orientation == Orientation.landscape
                  ? GoogleFonts.ptSansNarrow(
                      fontSize: 15.5.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.subText,
                    )
                  : GoogleFonts.ptSansNarrow(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.subText,
                    )),
          const Gap(5),
          Text(
            'Dart is a programming language that is used to build mobile apps. It is used to build apps for iOS and Android. It is a cross-platform framework that allows developers to build applications for iOS, Android, and the web.',
            style: size.size == LayoutSize.desktop ||
                    size.orientation == Orientation.landscape
                ? GoogleFonts.ptSansNarrow(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  )
                : GoogleFonts.ptSansNarrow(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
          ),
          const Gap(30),
          Text('firebase'.toUpperCase(),
              style: size.size == LayoutSize.desktop ||
                      size.orientation == Orientation.landscape
                  ? GoogleFonts.ptSansNarrow(
                      fontSize: 15.5.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.subText,
                    )
                  : GoogleFonts.ptSansNarrow(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.subText,
                    )),
          const Gap(5),
          Text(
            'Firebase is a cloud-based platform for managing and scaling mobile apps and services. It is used to build apps for iOS and Android. It is a cross-platform framework that allows developers to build applications for iOS, Android, and the web.',
            style: size.size == LayoutSize.desktop ||
                    size.orientation == Orientation.landscape
                ? GoogleFonts.ptSansNarrow(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  )
                : GoogleFonts.ptSansNarrow(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
          ),
          const Gap(30),
          Text('figma'.toUpperCase(),
              style: size.size == LayoutSize.desktop ||
                      size.orientation == Orientation.landscape
                  ? GoogleFonts.ptSansNarrow(
                      fontSize: 15.5.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.subText,
                    )
                  : GoogleFonts.ptSansNarrow(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.subText,
                    )),
          const Gap(5),
          Text(
            'Figma is a design tool that helps you create and share beautiful designs. It is used to build apps for iOS and Android. It is a cross-platform framework that allows developers to build applications for iOS, Android, and the web.',
            style: size.size == LayoutSize.desktop ||
                    size.orientation == Orientation.landscape
                ? GoogleFonts.ptSansNarrow(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  )
                : GoogleFonts.ptSansNarrow(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
          ),
          const Gap(30),
          Text('rest api'.toUpperCase(),
              style: size.size == LayoutSize.desktop ||
                      size.orientation == Orientation.landscape
                  ? GoogleFonts.ptSansNarrow(
                      fontSize: 15.5.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.subText,
                    )
                  : GoogleFonts.ptSansNarrow(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.subText,
                    )),
          const Gap(5),
          Text(
            'Rest API is a web service that allows you to access data from a server. It is used to build apps for iOS and Android. It is a cross-platform framework that allows developers to build applications for iOS, Android, and the web.',
            style: size.size == LayoutSize.desktop ||
                    size.orientation == Orientation.landscape
                ? GoogleFonts.ptSansNarrow(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  )
                : GoogleFonts.ptSansNarrow(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
          ),
          const Gap(30),
          Text('wordpress'.toUpperCase(),
              style: size.size == LayoutSize.desktop ||
                      size.orientation == Orientation.landscape
                  ? GoogleFonts.ptSansNarrow(
                      fontSize: 15.5.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.subText,
                    )
                  : GoogleFonts.ptSansNarrow(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.subText,
                    )),
          const Gap(5),
          Text(
            'WordPress is a web application software that allows you to create a website. It is used to build apps for iOS and Android. It is a cross-platform framework that allows developers to build applications for iOS, Android, and the web.',
            style: size.size == LayoutSize.desktop ||
                    size.orientation == Orientation.landscape
                ? GoogleFonts.ptSansNarrow(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  )
                : GoogleFonts.ptSansNarrow(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
          ),
          const Gap(40),

          //? EDUCATION TAB
          Container(height: 15, width: 70, color: Colors.deepPurple),
          const Gap(40),
          Text('Education',
              style: size.size == LayoutSize.desktop ||
                      size.orientation == Orientation.landscape
                  ? AppStyles.titleText(17)
                  : AppStyles.titleText(21)),
          const Gap(10),
          Text('Bsc.ED in MATHEMATICS - UNIVERSITY OF IBADAN',
              style: size.size == LayoutSize.desktop ||
                      size.orientation == Orientation.landscape
                  ? GoogleFonts.ptSansNarrow(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.subText,
                    )
                  : GoogleFonts.ptSansNarrow(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.subText,
                    )),
          const Gap(5),
          Text(
            'Graduated April 2021',
            style: size.size == LayoutSize.desktop ||
                    size.orientation == Orientation.landscape
                ? GoogleFonts.ptSansNarrow(
                    fontSize: 14.5.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )
                : GoogleFonts.ptSansNarrow(
                    fontSize: 15.5.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
          ),
          const Gap(30),
        ],
      );
    });
  }
}
