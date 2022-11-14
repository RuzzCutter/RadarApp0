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
                return Tooltip(
                    message: data.myimages[index].name,
                    waitDuration: const Duration(milliseconds: 100),
                    showDuration: const Duration(milliseconds: 100),
                    padding: const EdgeInsets.all(12),
                    height: 35,
                    verticalOffset: 75,
                    preferBelow: true,
                    textStyle: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                    decoration: const BoxDecoration(
                        borderRadius:
                        BorderRadius.vertical(
                          top: Radius.circular(0),
                          bottom: Radius.circular(10),),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 10.0,
                            offset: Offset(6.0, 6.0),
                          ),
                        ],
                        color: Colors.indigo),
                    child:RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondRoute(imageData: data.myimages[index],)),
                        );
                      },
                      hoverColor: Colors.indigo,
                      child:
                          Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: ClipRRect(borderRadius: BorderRadius.circular(4),
                                  child: Image(
                                    image: AssetImage(
                                        data.myimages[index].path),
                                    fit: BoxFit.cover,
                                    height: 150,
                                    width: 150,
                                  )
                              )
                          ),

                    ));
              }
          ),
        )));
  }
}
