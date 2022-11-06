import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  final imageData;
  const SecondRoute({super.key, required this.imageData});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          imageData.name,
          style: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.normal, color: Colors.white),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(size.width/30),
        child: Image(image: AssetImage(imageData.path), fit: BoxFit.contain)),
    );
  }
}
