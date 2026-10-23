import 'package:flutter/material.dart';

class Flex2 extends StatelessWidget {
  const Flex2({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: -50,
              left: -50,
              child: Container(height: 150, width: 100, 
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75),
                color: Colors.amber,
              ),
              )
            ),
            Container(height: 300,width: 300, color: Colors.pinkAccent,
            ),
      ],
    ),
    ),
    );
  }
}