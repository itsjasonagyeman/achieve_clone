import 'package:flutter/material.dart';

class RequestCallback extends StatefulWidget {
  const RequestCallback({super.key});

  @override
  State<RequestCallback> createState() => _RequestCallbackState();
}

class _RequestCallbackState extends State<RequestCallback> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Container(
                    padding: const EdgeInsets.all(16),
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Please be advised that one of our agents will reach to you within the next 24 hours"),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 40,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blueGrey[200]
                                  ),
                                  child: const Center(child: Text('Cancel')),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 40,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(255, 5, 33, 58)
                                  ),
                                  child: const Center(child: Text('Proceed', style: TextStyle(color: Colors.white),)),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
      ),
    );
  }
}