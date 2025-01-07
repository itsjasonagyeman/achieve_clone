import 'package:achieve_clone/pages/Navigate%20from%20homepage/Investment_vault_components/tab_Switch.dart';
import 'package:flutter/material.dart';

class InvestmentVault extends StatefulWidget {
  const InvestmentVault({super.key});

  @override
  State<InvestmentVault> createState() => _InvestmentVaultState();
}

class _InvestmentVaultState extends State<InvestmentVault> {
  @override
  Widget build(BuildContext context) {

    
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Investment vault', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios),),
          centerTitle: true,
          elevation: 1,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
                TabSwitch(),
            ],
          ),
        ),
      ),
    );
  }
}