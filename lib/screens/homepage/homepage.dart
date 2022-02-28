import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_layout_builder/responsive_layout_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:resume/screens/homepage/phone/phone_top.dart';
import 'package:resume/screens/homepage/web/web_top.dart';
import 'package:resume/screens/homepage/widgets/body_resume.dart';
import 'package:resume/screens/homepage/widgets/form.dart';

import 'widgets/bottom_side.dart';
import 'widgets/career_traits.dart';
import 'widgets/sidebar.dart';
import 'widgets/skill_set.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    controller.forward();
    return Scaffold(
      body: SafeArea(
          child: ResponsiveLayoutBuilder(
              defaultSize: LayoutSize.desktop,
              builder: (context, size) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //* THIS IS THE HEADER OF THE WEB PAGE
                        size.size == LayoutSize.desktop &&
                                    size.orientation == Orientation.landscape ||
                                Device.screenType == ScreenType.tablet
                            ? WebTop(
                                animation: animation,
                                onTap: () {
                                  scrollController.animateTo(
                                      scrollController
                                              .position.maxScrollExtent -
                                          50.0,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.linear);
                                },
                              )
                            : PhoneTop(
                                animation: animation,
                                onTap: () {
                                  scrollController.animateTo(
                                      scrollController
                                              .position.maxScrollExtent -
                                          150.0,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.linear);
                                },
                              ),

                        //* THIS IS THE SPACING BETWEEN THE HEADER AND THE BODY OF THE WEB PAGE
                        size.size == LayoutSize.desktop &&
                                    size.orientation == Orientation.landscape ||
                                Device.screenType == ScreenType.tablet
                            ? const Gap(200)
                            : const Gap(100),

                        //* THIS IS THE BODY OF THE WEB PAGE
                        size.size == LayoutSize.desktop &&
                                    size.orientation == Orientation.landscape ||
                                Device.screenType == ScreenType.tablet
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Spacer(),
                                  //* THE SIDEBAR OF THE WEB VERSION
                                  Sidebar(),
                                  Spacer(),
                                  Expanded(flex: 4, child: BodyResume()),
                                  Gap(60),
                                ],
                              )
                            : const BodyResume(),
                        const Gap(10),

                        size.size == LayoutSize.desktop &&
                                size.orientation == Orientation.landscape
                            ? const SizedBox()
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 15,
                                      width: 70,
                                      color: Colors.deepPurple),
                                  const Gap(20),
                                  const Skillset(),
                                  const Gap(50),
                                  const CareerTraits(),
                                  const Gap(70),
                                ],
                              ),

                        //* THIS IS THE FORM OF THE WEB PAGE
                        Container(
                            height: 15, width: 70, color: Colors.deepPurple),
                        const Gap(40),
                        size.size == LayoutSize.desktop &&
                                    size.orientation == Orientation.landscape ||
                                Device.screenType == ScreenType.tablet
                            ? Row(
                                children: [
                                  const Gap(20),
                                  const Expanded(child: CustomForm()),
                                  Expanded(
                                    child: Image.asset(
                                        'assets/images/walking.png'),
                                  ),
                                ],
                              )
                            : const CustomForm(),

                        const Gap(80),
                        //* THIS IS THE BOTTOM OF THE WEB PAGE - IT IS RESPONSIVE FOR BOTH WEB AND PHONE
                        const BottomSide()
                      ],
                    ),
                  ),
                );
              })),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(controller);
    super.initState();
  }
}
