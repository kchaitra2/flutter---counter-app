import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  bool isRed = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                "Counter: $counter",
                style: TextStyle(
                  fontSize: 30,
                  color: isRed ? Colors.red : Colors.blue,
                ),
              ),
              ),
               SizedBox(height:30),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                    isRed = ! isRed;
                  });
                },
                child: Text("Increment"),
              ),

              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isRed = ! isRed;
                  });
                },
                child: Text("Toggle"),
              ),
              SizedBox(height:30),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter = 0;
                    isRed = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal:20,vertical:15),
                ),
                child: Text("Reset"),
              ),
          
            ],
          ),
          ),
      ),
    );
  }
}
