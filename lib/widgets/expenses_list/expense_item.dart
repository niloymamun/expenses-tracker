import 'package:expenses_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Card(
        child: Column(
          children: [
            Text(expense.title),
            SizedBox(height: 4),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.alarm),
                    SizedBox(width: 8),
                    Text(expense.date.toString()),
                  ],
                ), // 15.555645 =>15.55
              ],
            ),
          ],
        ),
      ),
    );
  }
}
