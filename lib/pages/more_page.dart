import 'package:achieve_clone/general_components/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container( //Achieve Blog
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.purpleAccent
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container( //new container
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Center(child: Text('NEW', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.white),)),
                  ),
                  const SizedBox(height: 10),
                  const Text('Manage your work', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
                  const SizedBox(height: 5),
                  const Wrap(
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    spacing: 8,
                    runSpacing: 4,
                    children: [
                      Text("A complete toolkit for managing your work. From viewing payslips to applying for leave and much more.", 
                        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Color.fromARGB(255, 103, 102, 102), height: 1),
                      ),
                      InkWell(child: Text('Learn more', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.purple),)),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Text('No employer connected yet', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),), //Global variable checks for employment
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: (){},
                    child: Container( //petra pensions
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[600],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child:  const Center(child: Text('Connect to your employer', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.white),)),
                    ),
                  ),
                const SizedBox(height: 5),
                  GestureDetector(
                    onTap: (){},
                    child: Container( //petra pensions
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Center(child: Text('Refer an employer', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.black),)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}