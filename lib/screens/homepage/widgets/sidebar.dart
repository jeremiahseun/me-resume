import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'career_traits.dart';
import 'skill_set.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Skillset(),
          const Gap(100),
          const CareerTraits(),
          const Gap(80),
          Image.asset(
            'assets/images/happy.png',
          ),
          const Gap(120),
          Image.asset(
            'assets/images/clouds.png',
          ),
          const Gap(120),
          Image.asset(
            'assets/images/happy-customers.png',
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
