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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Custom Dialog",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text("This is a custom dialog with a button."),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Close"),
                        ),
                      ],
                    ),
      ),
    );
  }
}