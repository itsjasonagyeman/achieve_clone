import 'package:achieve_clone/pages/Navigate%20from%20homepage/Investment_vault_components/Save_invest/save_invest_page.dart';
import 'package:achieve_clone/pages/Navigate%20from%20homepage/Investment_vault_components/tab_State.dart';
import 'package:achieve_clone/pages/Navigate%20from%20homepage/Investment_vault_components/tab_Switch.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InvestmentVault extends StatefulWidget {
  const InvestmentVault({super.key});

  @override
  State<InvestmentVault> createState() => _InvestmentVaultState();
}

class _InvestmentVaultState extends State<InvestmentVault> {
  @override
  Widget build(BuildContext context) {
    final tab = Provider.of<TabState>(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Investment Vault',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          centerTitle: true,
          elevation: 1,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const TabSwitch(),
              const SizedBox(height: 10),
              tab.isactiveTab
                  ? const Text('Save towards the things you love')
                  : const Text('Your completed investment goals'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const SaveInvestPage()));
          },
          backgroundColor: Colors.blue[800],
          shape: const CircleBorder(),
          child: const Icon(Icons.add, color: Colors.white),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, 
      ),
    );
  }
}
