import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
            color: itemDetailsModel.color, shape: const OvalBorder()),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16.copyWith(
          color: const Color(0XFF4EB7F2),
        ),
      ),
    );
  }
}
