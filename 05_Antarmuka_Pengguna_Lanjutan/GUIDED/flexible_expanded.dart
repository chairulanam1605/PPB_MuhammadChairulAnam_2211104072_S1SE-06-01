import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible & Expanded'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          const Text('Flexible'),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 100,
                color: Colors.purple,
              ),
              Flexible(
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: const Text(
                      "This is flexible widget, it takes blablalbla"),
                ),
              ),
              Icon(Icons.sentiment_very_satisfied),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text('Expanded'),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.purple,
                child: const Text("This is expanded widget"),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: const Text("This is expanded widget"),
                ),
              ),
              Icon(Icons.sentiment_very_satisfied),
            ],
          ),
        ],
      ),
    );
  }
}
