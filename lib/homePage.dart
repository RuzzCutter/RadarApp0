import 'dart:math';
import 'package:flutter/material.dart';
import 'pictureViewer.dart';
import 'listOfImages.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ImagesData data = ImagesData();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(child:
    Scaffold(
        appBar: AppBar(
          title: const Text(
            'Галерея',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.normal, color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200, crossAxisSpacing: 0, mainAxisSpacing: 0),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondRoute(imageData: data.myimages[index],)),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ClipRRect(borderRadius: BorderRadius.circular(4),
                              child: Image(
                                image: AssetImage(
                                    data.myimages[index].path),
                                fit: BoxFit.cover,
                                height: max(size.height/6, size.width/6),
                                width: max(size.height/6, size.width/6),
                              ))
                      ),
                      Text(
                        data.myimages[index].name,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                );
              }
          ),
        )));
  }
}
