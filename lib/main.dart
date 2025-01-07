import 'package:achieve_clone/pages/Navigate%20from%20homepage/Investment_vault_components/tab_State.dart';
import 'package:achieve_clone/pages/explore_page.dart';
import 'package:achieve_clone/pages/homepage.dart';
import 'package:achieve_clone/pages/more_page.dart';
import 'package:achieve_clone/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => TabState(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}