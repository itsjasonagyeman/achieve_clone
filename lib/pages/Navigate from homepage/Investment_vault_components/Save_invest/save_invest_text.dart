import 'package:flutter/material.dart';

class SaveInvestText extends StatefulWidget {
  const SaveInvestText({super.key});

  @override
  State<SaveInvestText> createState() => _SaveInvestTextState();
}

class _SaveInvestTextState extends State<SaveInvestText> {
  @override
  Widget build(BuildContext context) {
    return Text('''
      Low-risk fund primarily invested in treasury bills and bonds. Perfect for short-term goals(3 to 12 months).
      Fun Facts
      1. Earns more than 3x the interest on your Bank/ Momo
      2. Ideal for beginner Investors
      3.Popular Goals; Emergency fund, phone, bills
    ''');
  }
}