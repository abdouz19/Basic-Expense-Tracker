import 'package:expense/models/expense_model.dart';
import 'package:flutter/material.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(this.myExpense, {super.key});

  final ExpenseModel myExpense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [Text(myExpense.title)],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text('${myExpense.amount.toStringAsFixed(2)} DA'),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[myExpense.category]),
                    const SizedBox(width: 8,),
                    Text(myExpense.formattedDate),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
