import 'package:flutter/material.dart';

class Flex3 extends StatelessWidget {
  const Flex3({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 200,
      child: ListView(
      clipBehavior: Clip.antiAlias,
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: 300,
          height: 200,
          color: Colors.red,
        ),
        Container(
          width: 300,
          height: 200,
          color: Colors.blue,
        ),
        Container(
          width: 300,
          height: 200,
          color: Colors.green,
        ),
         Container(
          width: 300,
          height: 200,
          color: Colors.yellow,
        ),
      ],
    )
    );
  }
}
      