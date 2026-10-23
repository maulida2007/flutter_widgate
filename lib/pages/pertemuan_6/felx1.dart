import 'package:flutter/material.dart';

class Flex1 extends StatelessWidget {
  const Flex1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          spacing: 10,
          children: [
            Expanded(
              flex: 4,
              child: Container(
                height: 200,
                color: const Color.fromARGB(255, 86, 194, 227),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 200,
                color: Colors.red,
              ),
            ),
          ],
        )
      )
    );
  }
}