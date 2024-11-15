import 'package:expense/models/expense_model.dart';
import 'package:expense/widgets/expenses_list/exepnses_list.dart';
import 'package:expense/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class MainExpenses extends StatefulWidget {
  const MainExpenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MainExpensesState();
  }
}

class _MainExpensesState extends State<MainExpenses> {
  List<ExpenseModel> myExpensesList = [
    ExpenseModel(title: 'Breakfest', amount: 40, date: DateTime.now(),category: Category.food),
    ExpenseModel(title: 'Water', amount: 80, date: DateTime.now(),category: Category.food),
    ExpenseModel(title: 'transportation', amount: 130, date: DateTime.now(),category: Category.travel)
  ];

  void addModelOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) =>const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses Tracker'),
        actions: [IconButton(onPressed: addModelOverlay, icon: const Icon(Icons.add))],
      ),
      body: Column(
        children: [
          const Text('data'),
          Expanded(child: ExpensesList(myExpensesList))
        ]
      ),
    );
  }
}
