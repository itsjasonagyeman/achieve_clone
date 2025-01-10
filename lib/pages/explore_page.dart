import 'package:achieve_clone/general_components/custom_app_bar.dart';
import 'package:achieve_clone/pages/Navigate%20from%20explore%20page/groups.dart';
import 'package:achieve_clone/pages/Navigate%20from%20homepage/Investment_vault.dart';
import 'package:achieve_clone/pages/Navigate%20from%20homepage/Investment_vault_components/Save_invest/save_invest_page.dart';
import 'package:achieve_clone/pages/Navigate%20from%20homepage/petra_pensions.dart';
import 'package:achieve_clone/pages/more_page.dart';
import 'package:flutter/material.dart';


class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {

  final List pageName = [
    'Flexible Investments',
    'Groups',
    'Goals',
    'Fixed Investments',
  ];

  final List pageImage = [
    Icons.wallet,
    Icons.people,
    Icons.emoji_events_outlined,
    Icons.lock,
  ];

  final List pageColour = [
    Colors.green,
    Colors.black,
    Colors.orange, 
    Colors.purple,
  ];

  final List navigation = [
      const SaveInvestPage(),
      const Groups(),
      const InvestmentVault(),
      const SaveInvestPage(),
  ];
  

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
                        child: 
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> navigation[index]));
                          },
                          child: Container(height: 100,  decoration: BoxDecoration(
                              color: pageColour[index],
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.1),
                                      shape: BoxShape.circle
                                    ),
                                    child: Center(child: Icon(pageImage[index], color: Colors.white,)),
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      Text(pageName[index], style: const TextStyle(color: Colors.white, fontSize: 14),),
                                      const Spacer(),
                                      const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 10,)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    })
                ),
                const SizedBox(height: 10,),
                Container(
                  // Petra pensions
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Petra Pensions',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                              const Text(
                                'Do you have a pension account with Petra? Tap here to link it now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15),
                              ),
                              const SizedBox(height: 10),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const PetraPensions()));
                                },
                                child: Container(
                                  height: 40,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Start now',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
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
                    color: const Color.fromARGB(255, 35, 41, 44),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Get a fast, affordable loan now', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.white),),
                        const SizedBox(height: 10,),
                        const Text('Times are hard. Safeguard your investment while having access to a loan to handle your emergency.', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: Colors.white),),
                        const Spacer(),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(child: Text('Request Callback')),
                        )
                      ],
                    ),
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
                    color: const Color.fromARGB(255, 201, 243, 154),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: 
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Insurance cover', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black),),
                            const SizedBox(height: 10,),
                            Text('Insurance for you, your kids, wife/husband, parents and parents in-law', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: Colors.grey[600]),),
                            const SizedBox(height: 20,),
                            Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.lightGreen,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(child: Text('Request Callback')),
                            )
                          ],
                        ),
                      ),
                  ),
                const SizedBox(height: 15,),
                const Text('Manage your work', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
                const SizedBox(height: 15,),
                Container( //manage your work container
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 232, 176, 241),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: 
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Employee Self-Service', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black),),
                            const SizedBox(height: 10,),
                            Text('View your payslips, make leave requests and do so much more with achievePayroll', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: Colors.grey[600]),),
                            const SizedBox(height: 20,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const MorePage()));
                              },
                              child: Container(
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 179, 81, 196),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(child: Text('Get started')),
                              ),
                            )
                          ],
                        ),
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