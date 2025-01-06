import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                color: Colors.transparent,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Jason Agyeman',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ), // can be changed
                    SizedBox(width: 5),
                    Text(
                      '@jason_agyeman',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ), // can be changed
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
                color: Colors.black,
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // heart container
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    const SizedBox(height: 20), // Add spacing between containers
                    SizedBox(
                      height: 600, // Set a fixed height for the ListView
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 16,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            height: 30,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.settings_outlined, color: Colors.grey,),
                                SizedBox(width: 10),
                                Text('Security Settings', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 15,)
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(child: Text('AI2718439012', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),)),
                        Text('Achieve 2.0.46(3857)', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
