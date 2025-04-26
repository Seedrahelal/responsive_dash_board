import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/range_options.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.text, required this.padding});
  final String text;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: AppStyles.styleSemiBold20),
        RangeOptions(padding: padding)
      ],
    );
  }
}
