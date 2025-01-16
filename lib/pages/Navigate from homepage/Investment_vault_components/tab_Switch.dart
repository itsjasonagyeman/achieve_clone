import 'package:achieve_clone/pages/Navigate%20from%20homepage/Investment_vault_components/tab_State.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabSwitch extends StatefulWidget {
  const TabSwitch({super.key});

  @override
  State<TabSwitch> createState() => _TabSwitchState();
}

class _TabSwitchState extends State<TabSwitch> {
  

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
                currentTab.isActive(); // Switch to "ACTIVE" tab
              });
            },
            child: Container(
              height: 40,
              width: screenWidth / 2 - 16,
              decoration: BoxDecoration(
                color: currentTab.isactiveTab ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                boxShadow: currentTab.isactiveTab
                    ? [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(3, 3),
                          color: Colors.black.withValues(alpha: 0.2),
                        )
                      ]
                    : [],
              ),
              child: const Center(
                child: Text(
                  'ACTIVE',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentTab.isHistory(); // Switch to "HISTORY" tab
              });
            },
            child: Container(
              height: 40,
              width: screenWidth / 2 - 16,
              decoration: BoxDecoration(
                color: !currentTab.isactiveTab ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                boxShadow: !currentTab.isactiveTab
                    ? [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(3, 3),
                          color: Colors.black.withValues(alpha: 0.2),
                        )
                      ]
                    : [],
              ),
              child: const Center(
                child: Text(
                  'HISTORY',
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
