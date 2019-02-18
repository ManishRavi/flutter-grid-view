import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Grid View',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Grid View",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return GridView.count(
              crossAxisCount: orientation == Orientation.landscape ? 4 : 2,
              crossAxisSpacing: 5.0,mainAxisSpacing: 0.0,
              children: List.generate(10, (generator) {
                return Image.asset(
                  "images/image$generator.jpg",
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
