import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const new({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List data = [
    {
      "ques": "what is the capital of pakistan?",
      "op1":"Islamabad",
      "op2": "Sahiwal",
      "op3":"Lahore",
      "ans": "A"
    },
      {
      "ques": "what is the largest city of pakistan?",
      "op1":"Islamabad",
      "op2": "Karachi",
      "op3":"Lahore",
      "ans": "B"
    }
  ];
bool isA = false;
bool isB = false;

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
        body:Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
          spacing: 20,
          children: [
            Text(data[index]['ques']),
            GestureDetector(
              onTap: () {
                setState(() {
                    isA = true;
                    
                    
                });
              },
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                decoration: 
                BoxDecoration(
                  color: const Color.fromARGB(255, 255, 214, 211),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(data[index]['op1']),
                      Icon(
                        
                        isA == true? data[index]['ans'] == "A"? Icons.check : Icons.close

                       : Icons.circle_outlined)
                    ],
                  ),
                ),
              ),
            ),
             Container(
              height: 45,
              width: MediaQuery.of(context).size.width,
              decoration: 
              BoxDecoration(
                color: const Color.fromARGB(255, 255, 214, 211),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(data[index]['op2']),
                    Icon(Icons.circle_outlined)
                  ],
                ),
              ),
            ),
              Container(
              height: 45,
              width: MediaQuery.of(context).size.width,
              decoration: 
              BoxDecoration(
                color: const Color.fromARGB(255, 255, 214, 211),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Text(data[index]['op3']),
                    Icon(Icons.circle_outlined)
                  ],
                ),
              ),
            ),
              GestureDetector(
                onTap: () {
                if(index+1< data.length)
                {
                     if(isA == true )

                     {
                         setState(() {
                    index++;
                    isA = false;

                  });
                     }
                     else{
                      print("Select one option");
                     }
                }
                else{
                  print("Quiz Complete");
                }
                },
                child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                decoration: 
                BoxDecoration(
                  color: Colors.red,
                ),
                child: Center(
                  child: Text("Next"),
                ),
                ),
              )
          ],
          ),
        )
    );
  }
}