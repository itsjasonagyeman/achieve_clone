import 'package:flutter/material.dart';

class TabSwitch extends StatefulWidget {
  const TabSwitch({super.key});

  @override
  State<TabSwitch> createState() => _TabSwitchState();
}

class _TabSwitchState extends State<TabSwitch> {
  bool activeTab = true; // Tracks the active tab state

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

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
                activeTab = true; // Switch to "ACTIVE" tab
              });
            },
            child: Container(
              height: 40,
              width: screenWidth / 2 - 16,
              decoration: BoxDecoration(
                color: activeTab ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                boxShadow: activeTab
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
                activeTab = false; // Switch to "HISTORY" tab
              });
            },
            child: Container(
              height: 40,
              width: screenWidth / 2 - 16,
              decoration: BoxDecoration(
                color: !activeTab ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                boxShadow: !activeTab
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
