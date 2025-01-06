import 'package:achieve_clone/general_components/custom_app_bar.dart';
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
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding:  const EdgeInsets.fromLTRB(15,8,15,8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Your Investments', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
                const SizedBox(height: 10,),
                Container( //Investment balance
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                const SizedBox(height: 10,),
                Container( //Petra pensions
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                const SizedBox(height: 15,),
                Container( //discover
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                const SizedBox(height: 15,),
                Container( //Manage your work
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent[100],
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}