import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  title: 'Customer Name', hint: 'Type Customer name'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                  title: 'Customer Email', hint: 'Type Customer email'),
            )
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  title: 'Item Name', hint: 'Type Customer name'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(title: 'Item Mount', hint: 'USD'),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Add more details',
                color: Colors.transparent,
                textColor: Color(0XFF4DB7F2),
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomButton(
                text: 'Send Money',
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
