import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PhoneButton extends StatelessWidget {
  final Function() onPressed;
  const PhoneButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        'SEND',
        style: GoogleFonts.ptSansNarrow(
          fontSize: 17.sp,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        fixedSize: const Size(160, 50),
      ),
    );
  }
}
