import 'package:flutter/material.dart';
import 'package:food_app/menu.dart';

class Home extends StatefulWidget {
  const new({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool all=false, classic=false, special=false, premium=false;
  bool menu=false, home=false, cart=false, orders=false, profile=false;
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
                        blurRadius: 2,
                        
                        blurStyle: BlurStyle.normal
                      )
                    ]
                    
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('20% off  first order',style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold),),
                      Text(
                          
                          'Code FORNO20  ends midnight',style: TextStyle(fontSize: 18,color:Colors.black ,),),
                    ],
                  ),
                ),
                
              ),
            ),SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children:[ Container(
                      padding: EdgeInsets.all(8),
                      height: 160,
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 236, 97, 97),
                            
                          )
                        ]
                        
                      ),
                    
                    ),
                    Positioned(
                      top: -50,
                      right: 0,
                      left: 0,
                      child: Image.network("https://png.pngtree.com/png-vector/20241102/ourmid/pngtree-top-view-of-a-margherita-pizza-png-image_14226822.png",height: 130,width: 130,)),
                      Positioned(
                        bottom: 50,
                        left: 10,
                        child:Text('Margherita',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),), ),
                        Positioned(
                          left: 10,
                          
                          bottom: 25,
                          child:Text('\$14.00',style: TextStyle(fontSize: 16,color:const Color.fromARGB(255, 236, 97, 97), fontWeight: FontWeight.bold),), ),
                          Positioned(
                            right: 10,
                            bottom: 30,
                            child:Container(
                              height: 27,
                              width: 27,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 140, 103, 73),
                              ),
                              child: Center(child: Icon(Icons.add,color: Colors.white,)),
                            ))
                    ]
                  ),
                  Stack(
                    
                    clipBehavior: Clip.none,
                    children:[ Container(
                      padding: EdgeInsets.all(8),
                      height: 160,
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 236, 97, 97),
                          )
                        ]
                        
                      ),
                    
                    ),
                    Positioned(
                      top: -50,
                      right: 0,
                      left: 0,
                      child: Image.network("https://png.pngtree.com/png-vector/20250529/ourmid/pngtree-pizza-isolated-on-white-background-png-image_16401329.png",height: 130,width: 130,)),
                      Positioned(
                        bottom: 50,
                        left: 10,
                        child:Text('Fajeta',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),), ),
                        Positioned(
                          left: 10,
                          
                          bottom: 25,
                          child:Text('\$15.50',style: TextStyle(fontSize: 16,color:const Color.fromARGB(255, 236, 97, 97), fontWeight: FontWeight.bold),), ),
                          Positioned(
                            right: 10,
                            bottom: 30,
                            child:Container(
                              height: 27,
                              width: 27,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 140, 103, 73),
                              ),
                              child: Center(child: Icon(Icons.add,color: Colors.white,)),
                            ))
                    ]
                  ),
                
                ],
              ),
            )
          
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 61,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.home_outlined,color:const Color.fromARGB(255, 236, 97, 97) ,),
                  Text('Home',style: TextStyle(fontSize: 12,color:const Color.fromARGB(255, 236, 97, 97),)),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      menu=true;
                      home=false;
                        cart=false;
                        orders=false;
                          profile=false;
                        setState(() {
                          
                        });
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Menu()));
                    },
                    child: Icon(Icons.widgets_outlined,color:menu==true?
                      Color.fromARGB(255, 140, 103, 73):Color.fromARGB(255, 236, 97, 97) ,)),
                  Text('Menu',style: TextStyle(fontSize: 12,color:Color.fromARGB(255, 140, 103, 73),)),
                ],
              ),
              Column(
                children: [
                  
                  Icon(Icons.shopping_cart_outlined,color: Color.fromARGB(255, 140, 103, 73),),
                  Text('cart',style: TextStyle(fontSize: 12,color:Color.fromARGB(255, 140, 103, 73),)),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.receipt_long,color: Color.fromARGB(255, 140, 103, 73),),
                  
                  Text('Orders',style: TextStyle(fontSize: 12,color:Color.fromARGB(255, 140, 103, 73),)),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.account_circle_outlined,color: Color.fromARGB(255, 140, 103, 73),),
                  
                  Text('Orders',style: TextStyle(fontSize: 12,color:Color.fromARGB(255, 140, 103, 73),)),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}