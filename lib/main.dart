import 'package:expense/widgets/main_expenses.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    theme: ThemeData(useMaterial3: true),
    debugShowCheckedModeBanner: false,
    home:const MainExpenses(),
  ));
}

