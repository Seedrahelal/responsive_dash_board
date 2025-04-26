import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';

class TransactionHistoryColumn extends StatelessWidget {
  const TransactionHistoryColumn({super.key});
  static const items = [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr,2022',
        amount: r'$20,129',
        isWithDrawal: true),
    TransactionModel(
        title: 'Landing Page project',
        date: '13 Apr,2022 At 3:30 PM',
        amount: r'$2,000',
        isWithDrawal: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: '13 Apr,2022',
        amount: r'$20,129',
        isWithDrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
  }
}
