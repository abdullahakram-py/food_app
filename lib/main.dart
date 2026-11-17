import 'package:flutter/material.dart';
import 'package:food_app/address.dart';
import 'package:food_app/forgotpass.dart';
import 'package:food_app/home.dart';
import 'package:food_app/logic1.dart';
import 'package:food_app/signin.dart';
import 'package:food_app/verify.dart';

void main() {
  runApp(const MyApp(
    
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home:Home(),
    );
  }
}

