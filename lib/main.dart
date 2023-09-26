import 'package:flutter/material.dart';

/// StateFullWidget_in_Flutter

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("StateFullWidget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Pressed Button : $_counter",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              ),
              SizedBox(height: 30,),
              Text(
                "$_counter",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    color: Colors.purple),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: _incrementCounter, child:Icon(Icons.add)),
                    SizedBox(width: 15,),
                    ElevatedButton(onPressed: _decrementCounter, child:Icon(Icons.minimize))
                  ],
                ),
              )
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: " Press Button",
        //   child: Icon(Icons.add),
        // ),
      ),
    );
  }
}
