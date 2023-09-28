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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 500,
                  height: 100,
                  color: Colors.grey,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "This is 1st Container",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 500,
                  height: 100,
                  //color: Colors.lime,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightGreen,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.lightBlue,
                            blurRadius: 5,
                            offset: Offset(2, 2))
                      ]),
                  constraints: BoxConstraints(
                    maxHeight: 300,
                    maxWidth: 800,
                  ),
                  //baka korar jonno
                  transform: Matrix4.rotationZ(0.1),
                  child: Text(
                    " This is container 2 ",
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
