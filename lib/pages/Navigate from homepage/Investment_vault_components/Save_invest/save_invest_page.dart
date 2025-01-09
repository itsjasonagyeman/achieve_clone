import 'package:achieve_clone/pages/Navigate%20from%20homepage/Investment_vault_components/Save_invest/save_invest_tab_change.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SaveInvestPage extends StatefulWidget {
  const SaveInvestPage({super.key});

  @override
  State<SaveInvestPage> createState() => _SaveInvestPageState();
}

class _SaveInvestPageState extends State<SaveInvestPage> {
  @override
  Widget build(BuildContext context) {

    final currentTab = Provider.of<SaveInvestTabChange>(context);

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
                    onTap: (){
                      currentTab.digisave();
                    },
                      child: Container( 
                        height: 190,
                        width: 140,
                        decoration: BoxDecoration(
                          color: currentTab.isDigisave? Colors.green[600]: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8,10,8,10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.wallet_outlined, color: currentTab.isDigisave? Colors.white: Colors.black),
                              Text('DigiSave', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15, color:currentTab.isDigisave? Colors.white : Colors.black),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    GestureDetector( //Eurobond
                    onTap: (){
                      currentTab.eurobond();
                    },
                      child: Container( 
                        height: 190,
                        width: 140,
                        decoration: BoxDecoration(
                          color: currentTab.isEurobond?Colors.purple: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8,10,8,10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.wallet_outlined, color: currentTab.isEurobond? Colors.white: Colors.black),
                              Text('Eurobond', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15, color: currentTab.isEurobond?Colors.white: Colors.black),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    GestureDetector( //DigiSave
                      onTap: (){
                        currentTab.global();
                      },
                      child: Container( 
                        height: 190,
                        width: 140,
                        decoration: BoxDecoration(
                          color: currentTab.isGlobal? Colors.black: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8,10,8,10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.wallet_outlined, color: currentTab.isGlobal?Colors.white: Colors.black,),
                              Text('Enhanced Equity Beta Fund(Global)', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15, color: currentTab.isGlobal?Colors.white: Colors.black),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(currentTab.isDigisave? 'Digisave': currentTab.isEurobond?'Eurobond trust': currentTab.isGlobal?'Enhanced Equity Beta Fund(Global Tech)':'',  style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 10,),
                Text(
                currentTab.isDigisave?'Low-risk fund primarily invested in Treasury bills and bonds.':
                currentTab.isEurobond? 'Moderate-risk fund fully invested in US Dollar-denominated Eurobonds':
                currentTab.isGlobal? 'High-risk fund primarily invested in global equities with a focus on technology(Apple, Google, Netflix etc.)':'',
                style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
                Text(
                currentTab.isDigisave?'Perfect for short-term goals(3 to 12 months).':
                currentTab.isEurobond? 'Perfect for medium-term goals(2 to 3 years).':
                currentTab.isGlobal?'Perfect for long-term goals(3+ years).': '',
                style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal),),
                const SizedBox(height: 20,),
                const Text('Fun Facts', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal),),
                Text(
                currentTab.isDigisave?'1. Earns more than 3x the interest on your Bank/ Momo': 
                currentTab.isEurobond? '1. Awesome for saving towards US Dollar expenses':
                currentTab.isGlobal?'1.Low cost access to global stocks': '',
                style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal),),
                Text(
                currentTab.isDigisave?'2. Ideal for beginner investors':
                currentTab.isEurobond? '2. Ideal for risk neutral investors':
                currentTab.isGlobal? '2. We designed a 6-month lock to help you stay disciplined.(Withdrawals are enabled 6 months after your first top-up)':'',
                style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal),),
                Text(
                  currentTab.isDigisave?'3. Popular Goals: Emergency fund, Phone':
                  currentTab.isEurobond?'3. Popular Goals: Car, Vacation, Education':
                  currentTab.isGlobal?'3. Trust fund for kids, Investing towards Retirement, Wealth building etc.':'',
                style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal),),
                  ],
                ),
              ),         
              const Spacer(),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Center(child: Text('Continue with', style: TextStyle(color: Colors.white, fontSize: 18),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}