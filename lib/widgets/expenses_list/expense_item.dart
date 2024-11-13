import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(height: 5),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'), //12.433 => 12.43
                const Spacer(),
                Row(
                  children: [
                    Icon(Icons.access_alarm),
                    const SizedBox(width: 8),
                    Text(expense.date.toString()),
                  ]
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}