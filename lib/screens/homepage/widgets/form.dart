import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_layout_builder/responsive_layout_builder.dart';
import 'package:resume/screens/homepage/phone/widgets/phone_button.dart';
import 'package:resume/screens/homepage/web/widgets/web_button.dart';
import 'package:resume/utils/styles.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
        defaultSize: LayoutSize.desktop,
        builder: (context, size) {
          return Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('CONTACT ME',
                    style: size.size == LayoutSize.desktop &&
                            size.orientation == Orientation.landscape
                        ? AppStyles.titleText(16.5)
                        : AppStyles.titleText(17)),
                const Gap(20),
                TextField(
                    decoration: InputDecoration(
                  hintText: 'Enter your name',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 232, 230, 230),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none),
                )),
                const Gap(20),
                TextField(
                    decoration: InputDecoration(
                  hintText: 'Enter your email',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 232, 230, 230),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none),
                )),
                const Gap(20),
                TextField(
                    decoration: InputDecoration(
                  hintText: 'Enter your message',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 232, 230, 230),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none),
                )),
                const Gap(30),
                size.size == LayoutSize.desktop &&
                            size.orientation == Orientation.landscape
                    ? WebButton(
                        onPressed: () {},
                      )
                    : PhoneButton(onPressed: () {}),
              ],
            ),
          );
        });
  }
}
