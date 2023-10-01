// Button In Flutter

import 'package:flutter/material.dart';
const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
enum SampleItem { itemOne, itemTwo, itemThree }
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String dropdownValue = list.first;
  SampleItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Button"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                  onPressed: () {
                    print("Outline button pressed");
                  },
                  child: const Text("OutLinedButton")),
              ElevatedButton(
                  onPressed: () {
                    print("pressed elevated button");
                  },
                  child: const Text("Elevated Button")),
              TextButton(
                  onPressed: () {
                    print("TextButton pressed");
                  },
                  child: const Text("Text Button")),
              IconButton(
                  onPressed: () {
                    print('Icon Button');
                  },
                  icon: const Icon(Icons.add)),
              FloatingActionButton(
                onPressed: () {
                  print('Floating action Button');
                },
                child: Icon(Icons.add_alarm_rounded),
              ),
              DropdownButton(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              PopupMenuButton<SampleItem>(
                initialValue: selectedMenu,
                // Callback that sets the selected popup menu item.
                onSelected: (SampleItem item) {
                  setState(() {
                    selectedMenu = item;
                  });
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemOne,
                    child: Text('Item 1'),
                  ),
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemTwo,
                    child: Text('Item 2'),
                  ),
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemThree,
                    child: Text('Item 3'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
