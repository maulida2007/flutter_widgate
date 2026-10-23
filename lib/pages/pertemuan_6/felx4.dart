import 'package:flutter/material.dart';

final List<Map<String, dynamic>> pegawai = [
  {'nama': 'John Doe', 'Kelas': 'ASE-25001', 'Warna': Colors.red},
  {'nama': 'Jane Smith', 'Kelas': 'ASE-25002', 'Warna': Colors.blue},
  {'nama': 'Michael Johnson', 'Kelas': 'ASE-25003', 'Warna': Colors.green},
];

class Flex4 extends StatelessWidget {
  const Flex4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: pegawai.length,
        itemBuilder: (context, index) {
          final data = pegawai[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: data['Warna'] as Color,
              ),
              child: Row(
                spacing: 10,
                children: [
                  const CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Nama lengkap : ${data['nama']}'),
                      Text('Kelas : ${data['Kelas']}'),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}