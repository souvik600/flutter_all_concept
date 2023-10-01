import 'package:flutter/material.dart';

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
          title: Text("Image in flutter"),
        ),
        body: SingleChildScrollView(
          child: Column( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 400,
                      height: 250,
                      color: Colors.tealAccent,
                      child: Image.asset('assets/souvik.jpg',),
                    ),
                    Text('This is Assets image',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),)
                  ],
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    width: 400,
                    height: 250,
                    color: Colors.yellowAccent,
                    child: Image.network('https://cdn.pixabay.com/photo/2018/02/15/21/55/sunset-3156440_1280.jpg'),
                  ),
                  Text("This is network Image",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  Container(
                    width: 400,
                    height: 250,
                    color: Colors.brown,
                    child: Center(
                      child: TextButton(onPressed: () {  }, child: Icon(Icons.add_a_photo,size: 50,),

                      ),
                    ),

                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
