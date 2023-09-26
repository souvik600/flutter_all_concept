import 'package:flutter/material.dart';

/// Container_in_Flutter

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: 500,
                height: 100,
                margin: EdgeInsets.all(
                  10,
                ),
                padding: EdgeInsets.all(10),
                color: Colors.purpleAccent,
                child: Text(
                  "This is Container",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      backgroundColor: Colors.green),
                ),

              ),
              Container(
                width: 500,
                height: 100,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
