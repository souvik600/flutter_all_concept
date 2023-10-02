/// ListView in Flutter

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
          title: const Text("ListView"),
          centerTitle: true,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: const ListViewWidget(),
      ),
    );
  }
}

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  final List<String> inputs = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
  ];
  final List<int> colorCodes = <int>[
    600,
    500,
    500,
    400,
    300,
    200,
    100,
    50,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(8),
        itemBuilder: (BuildContext context, int index) {
         return Container(
            height: 80,
            color: Colors.amber[colorCodes[index]],
            child: Center(child: Text('Value ${inputs[index]}')),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: inputs.length);
  }
  // final List<String> entries = <String>['A', 'B', 'C'];
  // final List<int> colorCodes = <int>[600, 500, 100];
  //
  // Widget build(BuildContext context) {
  //   return ListView.separated(
  //     padding: const EdgeInsets.all(8),
  //     itemCount: entries.length,
  //     itemBuilder: (BuildContext context, int index) {
  //       return Container(
  //         height: 50,
  //         color: Colors.amber[colorCodes[index]],
  //         child: Center(child: Text('Entry ${entries[index]}')),
  //       );
  //     },
  //     separatorBuilder: (BuildContext context, int index) => const Divider(),
  //   );
  // }

}
