import 'package:flutter/material.dart';

class Moneysafe extends StatelessWidget {
  const Moneysafe({super.key});

  @override
  Widget build(BuildContext context) {
    const String moneySafeText1 =
        'MoneySafe allows you to set aside money for different fixed periods for up to a year (e.g., 1 week, 1 month, 3 months, 6 months, or 12 months) and earn fixed returns.';
    const String moneySafeText2 =
        "We're rolling out in phases. We can't wait to make it available to you soon! Want to know when it's available? Set a reminder.";

    final List<String> info = [
      'T-bill and bond investments',
      'Fixed returns',
      'Automatic payments at maturity',
      'Multiple investment tenures',
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Unlock exciting possibilities with MoneySafe',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
              ),
              child: const Center(
                child: Text(
                  'MoneySafe Feature Highlight',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Know your interest upfront',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              moneySafeText1,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 20),
            // Fixed the ListView.builder
            Expanded(
              child: ListView.builder(
                itemCount: info.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.purple.withOpacity(0.2),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.check,
                              color: Colors.purple,
                              size: 15,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          info[index],
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              moneySafeText2,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  'Coming Soon',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
