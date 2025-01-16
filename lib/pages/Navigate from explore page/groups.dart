import 'package:achieve_clone/pages/Navigate%20from%20explore%20page/create_group.dart';
import 'package:flutter/material.dart';

class Groups extends StatelessWidget {
  const Groups({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Group Savings', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,100,20,20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.2),
                shape: BoxShape.circle,
              ),
              child: const Center(child: Icon(Icons.people_alt_outlined, color: Colors.grey, size: 40,)),
            ),
            const SizedBox(height: 20,),
            const Column(
              children: [
                Text('Achieve more together with Group Savings', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                SizedBox(height: 20,),
                Text('You can now invite friends and family to save and invest together towards a common goal. Create a money pool with your budies now', style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 15),),
              ],
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const CreateGroup()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const Center(child: Text('Continue', style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 15),),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}