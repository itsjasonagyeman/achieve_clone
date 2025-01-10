import 'package:flutter/material.dart';

class CreateGroup extends StatelessWidget {
  const CreateGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Group', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text('Group name', style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 18),),
            const SizedBox(height: 15),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200]
              ),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Group name', style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey, fontSize: 15),),
                )
              ),
            ),
            const SizedBox(height: 18),
            const Text('Group description', style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 18),),
            const SizedBox(height: 15),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200]
              ),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('''Example: This group is to facilitate group contributions for Baaba Hayford's wedding''', style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey, fontSize: 15),),
                )
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[800],
                borderRadius: BorderRadius.circular(15)
              ),
              child: const Center(child: Text('Create group', style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 15),),),
            ),
          ],
        ),
      ),
    );
  }
}