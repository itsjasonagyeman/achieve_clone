import 'package:achieve_clone/pages/Navigate%20from%20homepage/Investment_vault_components/tab_State.dart';
import 'package:achieve_clone/pages/Navigate%20from%20homepage/pensions_components/pensions_tab_switch.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PetraPensions extends StatefulWidget {
  const PetraPensions({super.key});

  @override
  State<PetraPensions> createState() => _PetraPensionsState();
}

class _PetraPensionsState extends State<PetraPensions> {

  String selectedOption = 'Email';
  

  @override
  Widget build(BuildContext context) {

    final currentTab = Provider.of<TabState>(context);

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Hi Jason', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            const Text('Link your Petra account(s) by entering your Petra ID, phone number, or the email address you used during your Petra registration.'),
            const SizedBox(height: 20,),
            const PensionsTabSwitch(),
            const SizedBox(height: 20,),
            Text(
              currentTab.ispetra? 'Enter your Petra ID number to get started':
              currentTab.isphone? 'Enter your phone number to get started':
              currentTab.isemail? 'Enter your email address to get started': '',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child:  Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    currentTab.ispetra?'HIxxxxxxx':
                    currentTab.isemail? 'Email Address':
                    currentTab.isphone? 'Enter Phone number': '',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.grey),),
                )),
            ),
            const SizedBox(height: 15,),
            currentTab.ispetra? const Text('How do you want to verify your account?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),): const SizedBox(),
            currentTab.ispetra? Column(
              children: [
                RadioListTile(
                  title: const Text('Email'),
                  value: 'Email', 
                  groupValue: selectedOption, 
                  onChanged: (value){
                    setState(() {
                      selectedOption = value!;
                    });
                  }
                ),
                RadioListTile(
                  title: const Text('SMS'),
                  value: 'SMS', 
                  groupValue: selectedOption, 
                  onChanged: (value){
                    setState(() {
                      selectedOption = value!;
                    });
                  }
                )
              ],
            ):  const SizedBox(),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[800],
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Center(child: Text('Continue', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),)),
            )
            
          ],
        ),
      ),
    );
  }
}