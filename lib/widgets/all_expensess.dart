import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_header.dart';
import 'package:responsive_dash_board/widgets/all_expensess_items_row.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomHeader(
            text: 'All Expensess',
            padding: EdgeInsets.all(12),
          ),
          SizedBox(height: 16),
          AllExpensessItemsRow(),
        ],
      ),
    );
  }
}
