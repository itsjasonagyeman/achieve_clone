import 'package:achieve_clone/pages/Navigate%20from%20homepage/pensions_components/pensions_tab_switch.dart';
import 'package:flutter/material.dart';

class PetraPensions extends StatefulWidget {
  const PetraPensions({super.key});

  @override
  State<PetraPensions> createState() => _PetraPensionsState();
}

class _PetraPensionsState extends State<PetraPensions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi Jason', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text('Link your Petra account(s) by entering your Petra ID, phone number, or the email address you used during your Petra registration.'),
            SizedBox(height: 20,),
            PensionsTabSwitch(),
          ],
        ),
      ),
    );
  }
}