import 'package:achieve_clone/pages/Navigate%20from%20homepage/Investment_vault_components/tab_State.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PensionsTabSwitch extends StatefulWidget {
  const PensionsTabSwitch({super.key});

  @override
  State<PensionsTabSwitch> createState() => _PensionsTabSwitchState();
}

class _PensionsTabSwitchState extends State<PensionsTabSwitch> {
  

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final currentTab = Provider.of<TabState>(context);

    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 5),
          GestureDetector(
            onTap: () {
              setState(() {
                currentTab.isPetraId(); // Switch to "ACTIVE" tab
              });
            },
            child: Container(
              height: 40,
              width: screenWidth / 3 - 16,
              decoration: BoxDecoration(
                color: currentTab.ispetra ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                boxShadow: currentTab.ispetra
                    ? [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(3, 3),
                          color: Colors.black.withOpacity(0.2),
                        )
                      ]
                    : [],
              ),
              child: const Center(
                child: Text(
                  'PETRA ID',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentTab.isPhoneNum(); // Switch to "HISTORY" tab
              });
            },
            child: Container(
              height: 40,
              width: screenWidth / 3 - 16,
              decoration: BoxDecoration(
                color: currentTab.isphone ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                boxShadow: currentTab.isphone
                    ? [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(3, 3),
                          color: Colors.black.withOpacity(0.2),
                        )
                      ]
                    : [],
              ),
              child: const Center(
                child: Text(
                  'PHONE',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentTab.isEmailAdd(); // Switch to "HISTORY" tab
              });
            },
            child: Container(
              height: 40,
              width: screenWidth / 3 - 16,
              decoration: BoxDecoration(
                color: currentTab.isemail ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                boxShadow: currentTab.isemail
                    ? [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(3, 3),
                          color: Colors.black.withOpacity(0.2),
                        )
                      ]
                    : [],
              ),
              child: const Center(
                child: Text(
                  'EMAIL',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
