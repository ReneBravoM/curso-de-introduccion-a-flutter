import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom/custom_button.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int clickCounter = 0;
  String clickString = 'clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              '$clickCounter',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
            ),

            Text(
              clickString,
              style: const TextStyle(fontSize: 25),
            ),

          ],
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                clickCounter++;
                clickString = clickCounter == 1 ? 'click' : 'clicks';
              });
            },
          ),

          const SizedBox(height: 10),

          CustomButton(
            icon: Icons.refresh_outlined,
            onPressed: () {
              setState(() {
                clickCounter = 0;
                clickString = 'clicks';
              });
            },
          ),

          const SizedBox(height: 10),

          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              if (clickCounter == 0) return;

              setState(() {
                clickCounter--;
                clickString = clickCounter == 1 ? 'click' : 'clicks';
              });
            },
          ),

        ],
      ),
    );
  }
}