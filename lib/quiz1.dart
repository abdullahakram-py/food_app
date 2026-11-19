import 'package:flutter/material.dart';

class Quiz1 extends StatefulWidget {
  const new({super.key});

  @override
  State<Quiz1> createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  List quiz =[
  {
    "ques" : " who is the founder of Pakistan?",
    "op1"  : "Quaid E Azam",
    "op2"  : "Allama Iqbal",
    "op3"  : "Sir Syed",
    "ans"  : " 1"
  },
  {
    "ques":"Which langauge is being used in Flutter?",
    "op1" :"Python",
    "op2" : "DART",
    "op3" : " Javascript",
    "ans" : "2",
  },
  
  ];
    bool is1=false;
    bool is2 = false;
    bool is3 = false;
    int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          children: [
            Text(quiz[index]['ques']),
            GestureDetector(
              onTap: () {
                setState(() {
                  is1=true;
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
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(quiz[index]["op1"]),
                          Icon(
                            
                            Icons.circle_outlined)
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
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(quiz[index]["op2"]),

                        Icon(Icons.circle_outlined)
                      ],
                    ),
                  ),
                  ),Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  decoration:
                  BoxDecoration(
                    color: const Color.fromARGB(255, 255, 214, 211),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(quiz[index]["op3"]),
                        Icon(Icons.circle_outlined)
                      ],
                    ),
                  ),
                  ),
                  GestureDetector(
                    onTap: () {
                      index++;
                      
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
                  ),
        
          ],
        ),
      ),
    );
  }
}