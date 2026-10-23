import "package:flutter/material.dart";

class Layout1 extends StatelessWidget{
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.
                spaceBetween,
                children: [
                  CircleAvatar(backgroundImage: AssetImage
                 ("gambar/lucu.jpg")), 
                 ElevatedButton(onPressed: (){}, 
                 child: Row(children: [
                  Text("Add new Plan"),
                  Icon(Icons.add)]),
                ),
              ],
                      ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Always be in touch",style: TextStyle(
                fontSize: 70, fontWeight: FontWeight.w900, height: 1.2,
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 150,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 238, 191, 246),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment. spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment. spaceBetween,
                      children: [
                        Row(children: [ Icon(Icons.language),
                        Text("AT&T", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),)]),
                        Text("Mexico", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment. spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("2GB/60min", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
                            Text("VALID FOR 24 DAYS", style: TextStyle(fontSize: 11))
                          ],
                        ),
                        Text("\$32,10", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35)),
                      ],
                    )
                  ],
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 150,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 191, 205, 246),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment. spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment. spaceBetween,
                      children: [
                        Row(children: [ Icon(Icons.person),
                        Text("VIVO", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),)]),
                        Text("Brazil", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment. spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("5GB", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
                            Text("VALID FOR 30 DAYS", style: TextStyle(fontSize: 11))
                          ],
                        ),
                        Text("\$15", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35)),
                      ],
                    )
                  ],
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 150,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 165, 213),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment. spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment. spaceBetween,
                      children: [
                        Row(children: [ Icon(Icons.battery_full),
                        Text("VODAFONE", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),)]),
                        Text("France", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment. spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("1GB", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
                            Text("VALID FOR 12 DAYS", style: TextStyle(fontSize: 11))
                          ],
                        ),
                        Text("\$104,20", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}