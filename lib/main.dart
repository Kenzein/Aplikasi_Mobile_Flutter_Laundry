import 'package:flutter/material.dart';
import 'package:money_laundry/screens/auth_choice_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter Demo', home: AuthChoicePage());
  }
}
