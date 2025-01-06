import 'package:achieve_clone/general_components/custom_app_bar.dart';
import 'package:flutter/material.dart';


class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15,8,15,8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Invest', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
                InkWell(
                  onTap: (){},
                  child: const Text("Choose any of our investment options to start investing in. Don't know which one to choose? Tap here", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Color.fromARGB(255, 103, 102, 102), height: 1),)
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 385,
                  width: double.infinity,
                  color: Colors.transparent,
                  child: 
                    GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    physics: const NeverScrollableScrollPhysics(), 
                    itemCount: 4,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0,8,8,8),
                        child: Container(height: 100,  decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)
                        ),),
                      );
                    })
                ),
                const SizedBox(height: 10,),
                Container( //petra pensions
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                const SizedBox(height: 15,),
                const Text('Loans', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
                const Text('Loan offers available', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Color.fromARGB(255, 103, 102, 102)),),
                const SizedBox(height: 15,),
                Container( //loan container
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                const SizedBox(height: 15,),
                const Text('Insure/Protect', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
                const Text('Innovative policies made just for you', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Color.fromARGB(255, 103, 102, 102)),),
                const SizedBox(height: 15,),
                Container( //insurance container
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                const SizedBox(height: 15,),
                const Text('Manage your work', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
                const SizedBox(height: 15,),
                Container( //manage your work container
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
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