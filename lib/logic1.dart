import 'package:flutter/material.dart';

class Logic1 extends StatefulWidget {
  const new({super.key});

  @override
  State<Logic1> createState() => _Logic1State();
}

class _Logic1State extends State<Logic1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextFormField(
        decoration: InputDecoration(
          hintText: 'Salary',hintStyle: TextStyle(fontSize: 12,color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.white
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.deepOrange,
            )
          )
        ),
      ),
    );
  }
}