import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isYellow = true;

  void toggleColor() {
    setState(() {
      isYellow =! isYellow ;

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: isYellow ? const Color.fromARGB(255, 242, 220, 24) : 
        const Color.fromARGB(255, 1, 43, 78),
        body: Center(

        child: ElevatedButton(onPressed: toggleColor, child: Text("Rengi değiştir"))
        ),
      );
  
}
}