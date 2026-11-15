import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const new({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool all=false, classic=false, special=false, premium=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 237, 224),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hey, Abdullah',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                    Text(
                          textAlign: TextAlign.justify,
                          ' F6,Islamabad',style: TextStyle(fontSize: 14,color:Color.fromARGB(255, 140, 103, 73) ,),),
                  ],
                ),
                Image.network('https://cdn-icons-png.flaticon.com/512/4140/4140061.png',height: 45,width: 45,)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,color:Color.fromARGB(255, 140, 103, 73) ,),
                  hintText: 'Search pizza, sides...',hintStyle: TextStyle(fontSize: 12,color:Color.fromARGB(255, 140, 103, 73) ),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white
                    ),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 232, 73, 29),
                    )
                  )
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    all=true;
                    classic=false;
                    special=false;
                    premium=false;
                    setState(() {
                      
                    });
                  }
                  ,
                  child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: all?Color.fromARGB(255, 232, 73, 29):Color.fromARGB(255, 140, 103, 73)
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color:all?
                      Color.fromARGB(255, 232, 73, 29):Color.fromARGB(255, 222, 210, 194),
                    ),
                    child: Center(
                      child: Text(
                                  
                                  ' All',style: TextStyle(fontSize: 12,color:
                                  all?
                                  Colors.white:Colors.black,),),
                    ),
                  ),
                ),SizedBox(width: 10,),
                GestureDetector(
                  onTap: (){
                    all=false;
                    classic=true;
                    special=false;
                    premium=false;
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: classic?
                      Color.fromARGB(255, 232, 73, 29):Color.fromARGB(255, 222, 210, 194),
                      border: Border.all(
                        color:classic? Color.fromARGB(255, 232, 73, 29):Color.fromARGB(255, 140, 103, 73),
                      )
                    ),
                    child: Center(
                      child: Text(
                                  
                                  ' Classic',style: TextStyle(fontSize: 12,color:
                                  classic?
                                  Colors.white:Colors.black,),),
                    ),
                  ),
                ),SizedBox(width: 10,),
                GestureDetector(
                  onTap:() {
                    all=false;
                    classic=false;
                    special=true;
                    premium=false;
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: special?
                      Color.fromARGB(255, 232, 73, 29):Color.fromARGB(255, 222, 210, 194),
                      border: Border.all(
                        color:
                        special?Color.fromARGB(255, 232, 73, 29): Color.fromARGB(255, 140, 103, 73)
                      )
                    ),
                    child: Center(
                      child: Text(
                                  
                                  ' Special',style: TextStyle(fontSize: 12,color:special?
                                  Colors.white:Colors.black,),),
                    ),
                  ),
                ),SizedBox(width: 10,),
                GestureDetector(
                  onTap: () {
                    all=false;
                    classic=false;
                    special=false;
                    premium=true;
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: premium?
                      Color.fromARGB(255, 232, 73, 29):Color.fromARGB(255, 222, 210, 194),
                      border: Border.all(
                        color:premium?
                        Color.fromARGB(255, 232, 73, 29):Color.fromARGB(255, 140, 103, 73)
                      )
                    ),
                    child: Center(
                      child: Text(
                                  
                                  ' Premium',style: TextStyle(fontSize: 12,color:premium?
                                  Colors.white:Colors.black,),),
                    ),
                  ),
                ),
                
                
              ],
            ),SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 7.0,
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 236, 97, 97),
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 110,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:Color.fromARGB(255, 232, 73, 29),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 236, 97, 97),
                      )
                    ]
                    
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}