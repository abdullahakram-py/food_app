import 'package:flutter/material.dart';

class Forgotpass extends StatefulWidget {
  const new({super.key});

  @override
  State<Forgotpass> createState() => _ForgotpassState();
}

class _ForgotpassState extends State<Forgotpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 237, 224),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: Icon(Icons.lock_outline,color: Colors.white,size: 30,),
              ),
            ),
            Center(child: Text('Reset Password',style: TextStyle(fontSize: 36,color: Colors.black,fontWeight: FontWeight.bold),)),
              Text(
                textAlign: TextAlign.justify,
                'We will mail you a reset link ',style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 140, 103, 73) ,),),
                TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email",hintStyle: TextStyle(fontSize: 12,color:Color.fromARGB(255, 140, 103, 73)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:Color.fromARGB(255, 232, 73, 29),
                      ),
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                )
          ],
        ),
      ),
    );
  }
}