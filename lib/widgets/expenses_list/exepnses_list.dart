import 'package:expense/models/expense_model.dart';
import 'package:expense/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(this.myExpensesList, {super.key});

  final List<ExpenseModel> myExpensesList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: myExpensesList.length ,itemBuilder:(ctx,index)=> ExpensesItem(myExpensesList[index]) ) ;
  }
}
