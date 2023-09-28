import 'package:flutter/material.dart';

/// text in flutter

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
          title: Text("text"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1. Simple text"),
              Text(
                "2. Text with colour , fontSize, fontWiget",
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Text("3. Text derection right Left to",
                  textDirection: TextDirection.rtl),
              Container(
                color: Colors.grey,
                width: 300,
                height: 50,
                child: Text(
                  "4. This is text align in center",
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                "5. Text Scale",
                textScaleFactor: 1.5,
              ),
              Text(
                "5. Text OverFlow  .....................................................................................hi",
                overflow: TextOverflow.visible,
                // /// Clip the overflowing text to fix its container.
                // clip,
                //
                // /// Fade the overflowing text to transparent.
                // fade,
                //
                // /// Use an ellipsis to indicate that the text has overflowed.
                // ellipsis,
                //
                // /// Render overflowing text outside of its container.
                // visible,
              ),
              Text(
                "6. Text MaxLine (only text Show two Line................................................................hi,)",
                maxLines:2,)
            ],
          ),
        ),
      ),
    );
  }
}
