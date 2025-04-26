import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
    required this.padding,
  });
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0XFFF1F1F1)),
              borderRadius: BorderRadius.circular(12))),
      child: Row(
        children: [
          const Text('Monthly', style: AppStyles.styleMedium16),
          const SizedBox(width: 18),
          Transform.rotate(
            angle: -1.57079633,
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0XFF064061),
            ),
          ),
        ],
      ),
    );
  }
}
