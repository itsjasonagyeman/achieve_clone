import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Hi, Jason', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),),
            ],
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.question_mark_outlined)),
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_outlined)),
            IconButton(onPressed: (){}, icon: Icon(Icons.comment))
          ],
        ),
        body: Center(child: Text('Homepage')),
      ),
    );
  }
}