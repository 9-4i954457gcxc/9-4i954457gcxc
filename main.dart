import 'package:flutter/material.dart';
import 'package:test5/home_screen.dart';

void main (){
  runApp ( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: HomeScreen(

      ),


    );
  }
}
