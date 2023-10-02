/// TextFild In Flutter

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TextFild"),
          centerTitle: true,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
           IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: const MyIconWidget(),
      ),
    );
  }
}

class MyIconWidget extends StatelessWidget {
  const MyIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Icon(Icons.star,size: 50,color: Colors.blue,));
  }
}
