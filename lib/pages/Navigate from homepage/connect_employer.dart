import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ConnectEmployer extends StatefulWidget {
  const ConnectEmployer({super.key});

  @override
  State<ConnectEmployer> createState() => _ConnectEmployerState();
}

class _ConnectEmployerState extends State<ConnectEmployer> {

  final List<String> assetImages = [
    'lib/images/employer_image1.png',
    'lib/images/employer_image2.png',
    'lib/images/employer_image3.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(
          style: ButtonStyle(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(child: Text('Placeholder Title', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)),
            const Text('Placeholder Description', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),),
            CarouselSlider(
              items: assetImages.map((e) => Center(
                child: Image.asset(e),
              )).toList(), 
              options: CarouselOptions(
                autoPlay: true,
                initialPage: 0,
                height: 400
              )),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[800]
                ),
                child: const Center(child: Text('Continue', style: TextStyle(color: Colors.white, fontSize: 20),)),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey
                ),
                child: const Center(child: Text('Later', style: TextStyle(color: Colors.black, fontSize: 20),)),
              )
          ],
        ),
      ),
    );
  }
}