import 'package:achieve_clone/pages/Navigate%20from%20homepage/Investment_vault_components/Save_invest/save_invest_text.dart';
import 'package:flutter/material.dart';

class SaveInvestPage extends StatefulWidget {
  const SaveInvestPage({super.key});

  @override
  State<SaveInvestPage> createState() => _SaveInvestPageState();
}

class _SaveInvestPageState extends State<SaveInvestPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Save and Invest', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,),),
              const Text('Select a fund to invest in', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15,),),
              const SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector( //Digisave
                      child: Container( 
                        height: 190,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.green[600],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(8,10,8,10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.wallet_outlined, color: Colors.white,),
                              Text('DigiSave', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15, color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    GestureDetector( //Eurobond
                      child: Container( 
                        height: 190,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(8,10,8,10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.wallet_outlined, color: Colors.black,),
                              Text('Eurobond', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15, color: Colors.black),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    GestureDetector( //DigiSave
                      child: Container( 
                        height: 190,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(8,10,8,10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.wallet_outlined, color: Colors.black,),
                              Text('Enhanced Equity Beta Fund(Global)', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15, color: Colors.black),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SaveInvestText()
            ],
          ),
        ),
      ),
    );
  }
}