import 'package:flutter/material.dart';

class MyImages {
  String path;
  final String name;
  MyImages({required this.path, required this.name});
}

class ImagesData{
  final _data=[
    MyImages(
      path:'assets/images/image1.jpg',
      name:'Image 1',

    ),
    MyImages(
      path:'assets/images/image2.jpg',
      name:'Image 2',
    ),
    MyImages(
      path:'assets/images/image3.jpg',
      name:'Image 3',
    ),
    MyImages(
      path:'assets/images/image4.jpg',
      name:'Image 4',
    ),
    MyImages(
      path:'assets/images/image5.jpg',
      name:'Image 5',
    ),
    MyImages(
      path:'assets/images/image6.jpg',
      name:'Image 6',
    ),
    MyImages(
      path:'assets/images/image7.jpg',
      name:'Image 7',
    ),
    MyImages(
      path:'assets/images/image8.jpg',
      name:'Image 8',
    ),
    MyImages(
      path:'assets/images/image9.jpg',
      name:'Image 9',
    ),
    MyImages(
      path:'assets/images/image10.jpg',
      name:'Image 10',
    ),
    MyImages(
      path:'assets/images/image11.jpg',
      name:'Image 11',
    ),
    MyImages(
      path:'assets/images/image12.jpg',
      name:'Image 12',
    ),
    MyImages(
      path:'assets/images/image13.jpg',
      name:'Image 13',
    ),
    MyImages(
      path:'assets/images/image14.jpg',
      name:'Image 14',
    ),
    MyImages(
      path:'assets/images/image15.jpg',
      name:'Image 15',
    ),
    MyImages(
      path:'assets/images/image16.jpg',
      name:'Image 16',
    ),
    MyImages(
      path:'assets/images/image17.jpg',
      name:'Image 17',
    ),
    MyImages(
      path:'assets/images/image18.jpg',
      name:'Image 18',
    ),
    MyImages(
      path:'assets/images/image19.jpg',
      name:'Image 19',
    ),
    MyImages(
      path:'assets/images/image20.jpg',
      name:'Image 20',
    ),
  ];
  List<MyImages> get myimages => [..._data];
}