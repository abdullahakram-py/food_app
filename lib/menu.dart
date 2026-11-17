import 'package:flutter/material.dart';
import 'package:food_app/cart.dart';
import 'package:food_app/home.dart';
import 'package:food_app/pizzaorder.dart';

class Menu extends StatefulWidget {
  const new({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool all=false, classic=false, special=false, premium=false;
  bool menu=false, home=false, cart=false, orders=false, profile=false;
  bool isshow=false;
  bool size1=false, size2=false, size3=false;
  bool crust1=false, crust2=false, crust3=false;
  bool topin1=false, topin2=false, topin3=false;
  bool hide = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 237, 224),
      appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 243, 237, 224),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(

            children: [
              Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Our Menu',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                            Text(
                                  textAlign: TextAlign.justify,
                                  '18 pizzas wood-fired daily ',style: TextStyle(fontSize: 14,color:Color.fromARGB(255, 140, 103, 73) ,),),
                          ],
                        ),
                        Image.network('https://cdn-icons-png.flaticon.com/512/4140/4140061.png',height: 45,width: 45,)
                      ],
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
                  ),SizedBox(height: 50,),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children:[ Material(
                            elevation: 7.0,
                            borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 236, 97, 97),
                            child: Container(
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
                          children:[ Material(
                            elevation: 7.0,
                            borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 236, 97, 97),
                            child: Container(
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
                          ),
                          Positioned(
                            top: -50,
                            right: 0,
                            left: 0,
                            child: Image.network("https://png.pngtree.com/png-vector/20250529/ourmid/pngtree-pizza-isolated-on-white-background-png-image_16401329.png",height: 130,width: 130,)),
                            Positioned(
                              bottom: 50,
                              left: 10,
                              child:Text('Fajita',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),), ),
                              Positioned(
                                left: 10,
                                
                                bottom: 25,
                                child:Text('\$15.50',style: TextStyle(fontSize: 16,color:const Color.fromARGB(255, 236, 97, 97), fontWeight: FontWeight.bold),), ),
                                Positioned(
                                  right: 10,
                                  bottom: 30,
                                  child:GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        hide = true;
                                      });
                                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Pizzaorder()));
                                    },
                                    child: Container(
                                      height: 27,
                                      width: 27,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromARGB(255, 140, 103, 73),
                                      ),
                                      child: Center(child: Icon(Icons.add,color: Colors.white,)),
                                    ),
                                  ),)
                          ]
                        ),
                      
                      ],
                    ),
                  )
                
                
                  ]
              ),
   hide == true?        Container(
     child: Stack(
              children: [
                  Positioned(
            right: 0,
            left: 0,
            bottom: 20,
            top: 160,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
              height: 800,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5
                  )
                ],
                color: const Color.fromARGB(255, 255, 93, 93),
                borderRadius: BorderRadius.circular(25),
              
              ),
                      ),
            )),
            Positioned(
              left: 0,
              right: 0,
              top:30,
              child: Image.network("https://png.pngtree.com/png-vector/20250529/ourmid/pngtree-pizza-isolated-on-white-background-png-image_16401329.png",height: 230,width: 230,)
              ),
              Positioned(
                left: 20,
                top: 50,
                child:GestureDetector(
                  onTap: () {
                      setState(() {
                                        hide = false;
                                      });
                    // Navigator.pop(context,MaterialPageRoute(builder: (context)=>Menu()));
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 232, 73, 29)
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 25,
                        ),
                    ),
                  ),
                ) ,
                ),
                Positioned(
                  left: 50,
                  top: 250,
                  bottom: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Fajita',style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold),
                      ),
                      Text(
                              
                              'Spicy salami  chili honey  mozarella ',style: TextStyle(fontSize: 14,color:Color.fromARGB(255, 140, 103, 73) ,),),
                              SizedBox(height: 10,),
                              Text(
                              
                              'SIZE ',style: TextStyle(fontSize: 14,color:Color.fromARGB(255, 140, 103, 73) ,),),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      size1=true;
                                        size2=false;
                                        size3=false;
                                        setState(() {
                                          
                                        });
                                    },
                                    child: Container(
                                      height: 25,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: size1==true?
                                        Color.fromARGB(255, 232, 73, 29):Colors.transparent,
                                        border: Border.all(
                                          
                                          color:size1==true?Color.fromARGB(255, 232, 73, 29):
                                          Color.fromARGB(255, 140, 103, 73),
                                        )
                                      ),
                                      child:Center(
                                        child: Text(
                                                                    
                                                                    ' 10" ',style: TextStyle(
                                                                      fontSize: 12,
                                                                      color:size1==true?Colors.white:
                                                                      Color.fromARGB(255, 140, 103, 73) ,),),
                                      ),
                                    ),
                                  ),SizedBox(width: 10,),
                                    GestureDetector(
                                      onTap: () {
                                        size1=false;
                                        size2=true;
                                        size3=false;
                                        setState(() {
                                          
                                        });
                                      },
                                      child: Container(
                                      height: 25,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: size2==true?
                                        Color.fromARGB(255, 232, 73, 29):Colors.transparent,
                                        border: Border.all(
     
                                          color: size2==true?Color.fromARGB(255, 232, 73, 29):
                                            Color.fromARGB(255, 140, 103, 73),
                                        )
                                      ),
                                      child:Center(
                                        child: Text(
                                                                    
                                                                    ' 12" ',style: TextStyle(
                                                                      fontSize: 12,
                                                                      color:size2==true?Colors.white:
                                                                    Color.fromARGB(255, 140, 103, 73) ,),),
                                      ),
                                                                      ),
                                    ),SizedBox(width: 10,),
                                    GestureDetector(
                                      onTap: () {
                                        size1=false;
                                        size2=false;
                                        size3=true;
                                        setState(() {
                                          
                                        });
                                      },
                                      child: Container(
                                      height: 25,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: size3==true?
                                        Color.fromARGB(255, 232, 73, 29):Colors.transparent,
                                        border: Border.all(
                                          color:size3==true?Color.fromARGB(255, 232, 73, 29):
                                            Color.fromARGB(255, 140, 103, 73),
                                        )
                                      ),
                                      child:Center(
                                        child: Text(
                                                                    
                                                                    ' 14" ',style: TextStyle(
                                                                      fontSize: 12,
                                                                      color:size3==true?Colors.white:
                                                                    Color.fromARGB(255, 140, 103, 73) ,),),
                                      ),
                                                                      ),
                                    ),
                                ],
                              ),
                              SizedBox(height: 5,),
                                  Text(
                              
                              'CRUST ',style: TextStyle(fontSize: 14,color:Color.fromARGB(255, 140, 103, 73) ,),),
                              SizedBox(height: 5,),
                                  Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      crust1=true;
                                      crust2=false;
                                      crust3=false;
                                      setState(() {
                                        
                                      });
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: crust1==true?
                                        Color.fromARGB(255, 232, 73, 29):Colors.transparent,
                                        border: Border.all(
                                          color: crust1==true?Color.fromARGB(255, 232, 73, 29):
                                          Color.fromARGB(255, 140, 103, 73),
                                        )
                                      ),
                                      child:Center(
                                        child: Text(
                                                                    
                                                                    ' Thin ',style: TextStyle(
                                                                      fontSize: 12,
                                                                      color:crust1==true?Colors.white:
                                                                    Color.fromARGB(255, 140, 103, 73)
                                                                      ,),),
                                      ),
                                    ),
                                  ),SizedBox(width: 10,),
                                    GestureDetector(
                                      onTap: () {
                                      crust1=false;
                                      crust2=true;
                                      crust3=false;
                                      setState(() {
                                        
                                      });
                                      },
                                      child: Container(
                                      height: 30,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: crust2==true?
                                        Color.fromARGB(255, 232, 73, 29):Colors.transparent,
                                        border: Border.all(
                                            
                                          color:crust2==true?Color.fromARGB(255, 232, 73, 29):
                                          Color.fromARGB(255, 140, 103, 73),
                                        )
                                      ),
                                      child:Center(
                                        child: Text(
                                                                    
                                                                    ' Classic ',style: TextStyle(
                                                                      fontSize: 12,
                                                                      color:crust2==true?Colors.white:
                                                                    Color.fromARGB(255, 140, 103, 73)
                                                                      ,),),
                                      ),
                                                                      ),
                                    ),SizedBox(width: 10,),
                                    GestureDetector(
                                      onTap: () {
                                        crust1=false;
                                      crust2=false;
                                      crust3=true;
                                      setState(() {
                                        
                                      });
                                      },
                                      child: Container(
                                      height: 30,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: crust3==true?
                                        Color.fromARGB(255, 232, 73, 29):Colors.transparent,
                                        border: Border.all(
                                          color: crust3==true?Color.fromARGB(255, 232, 73, 29):
                                          Color.fromARGB(255, 140, 103, 73),
                                        )
                                      ),
                                      child:Center(
                                        child: Text(
                                                                    
                                                                    ' Stuffed ',style: TextStyle(
                                                                      fontSize: 12,
                                                                      color:crust3==true?Colors.white:
                                                                    Color.fromARGB(255, 140, 103, 73)
                                                                        ,),),
                                      ),
                                                                      ),
                                    ),
                                ],
                              ),
                              SizedBox(height: 5,),
                                  Text(
                              
                              'EXTRA TOPPINGS ',style: TextStyle(fontSize: 14,color:Color.fromARGB(255, 140, 103, 73) ,),),
                              SizedBox(height: 5,),
                                  Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      topin1=true;
                                      topin2=false;
                                      topin3=false;
                                      setState(() {
                                        
                                      });
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: topin1==true?
                                        Color.fromARGB(255, 232, 73, 29):Colors.transparent,
                                        border: Border.all(
     
                                          color: topin1==true?Color.fromARGB(255, 232, 73, 29):
                                          Color.fromARGB(255, 140, 103, 73),
                                        )
                                      ),
                                      child:Center(
                                        child: Text(
                                                                    
                                                                    ' Chilli Honey ',style: TextStyle(
                                                                      fontSize: 12,
                                                                      color:topin1==true?Colors.white:
                                                                    Color.fromARGB(255, 140, 103, 73)
                                                                        ,),),
                                      ),
                                    ),
                                  ),SizedBox(width: 10,),
                                    GestureDetector(
                                      onTap: () {
                                        topin1=false;
                                      topin2=true;
                                      topin3=false;
                                      setState(() {
                                        
                                      });
                                      },
                                      child: Container(
                                      height: 30,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                          color: topin2==true?
                                        Color.fromARGB(255, 232, 73, 29):Colors.transparent,
                                        border: Border.all(
                                          color: topin2==true?Color.fromARGB(255, 232, 73, 29):
                                          Color.fromARGB(255, 140, 103, 73),
                                        )
                                      ),
                                      child:Center(
                                        child: Text(
                                                                    
                                                                    ' Basil ',style: TextStyle(
                                                                      fontSize: 12,
                                                                      color:topin2==true?Colors.white:
                                                                    Color.fromARGB(255, 140, 103, 73) ,),),
                                      ),
                                                                      ),
                                    ),SizedBox(width: 10,),
                                    GestureDetector(
                                      onTap: () {
                                        topin1=false;
                                      topin2=false;
                                      topin3=true;
                                      setState(() {
                                        
                                      });
                                      },
                                      child: Container(
                                      height: 30,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: topin3==true?
                                        Color.fromARGB(255, 232, 73, 29):Colors.transparent,
                                        border: Border.all(
                                          color: topin3==true?Color.fromARGB(255, 232, 73, 29):
                                          Color.fromARGB(255, 140, 103, 73),
                                        )
                                      ),
                                      child:Center(
                                        child: Text(
                                                                    
                                                                    ' Extra Cheese ',
                                                                    style: TextStyle(
                                                                      fontSize: 12,
                                                                      color:topin3==true?Colors.white:
                                                                    Color.fromARGB(255, 140, 103, 73)
                                                                      ,),),
                                      ),
                                                                      ),
                                    ),
                                ],
                              ),
                              Row(
                                
                                children: [
                                  Text('\$15.50',style: TextStyle(fontSize: 18,color:const Color.fromARGB(255, 236, 97, 97), fontWeight: FontWeight.bold),), 
                                  SizedBox(width: 250,),
                                  Container(
                                                    height: 40,
                                                    width: 130,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(15),
                                                      color:Color.fromARGB(255, 232, 73, 29)
                                                    ),
                                                    child: Center(child: Text('Add to Cart',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold))),
                                                  ),
                                ],
                              ),
     
                            
                          
                    ],
                  ),
                  ),
                  
              ],
             ),
   ):Container()
            ],
          ),
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
                  GestureDetector(
                    onTap: () {
                      menu=false;
                      home=true;
                        cart=false;
                        orders=false;
                          profile=false;
                          setState(() {
                            Navigator.pop(context,MaterialPageRoute(builder: (context)=>Home()));
                          });
                    },
                    child: Icon(
                      Icons.home_outlined,
                        color:home==true?
                      const Color.fromARGB(255, 236, 97, 97):Color.fromARGB(255, 140, 103, 73) ,)),
                  Text(
                    'Home',style: TextStyle(fontSize: 12, color:home==true?
                      const Color.fromARGB(255, 236, 97, 97):Color.fromARGB(255, 140, 103, 73),)),
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
                    },
                    child: Icon(Icons.widgets_outlined,
                    color:menu==true?
                      const Color.fromARGB(255, 236, 97, 97):Color.fromARGB(255, 140, 103, 73) 
                    ,)),
                  Text('Menu',style: TextStyle(
                    fontSize: 12,
                    color:home==true?
                      const Color.fromARGB(255, 236, 97, 97):Color.fromARGB(255, 140, 103, 73) ,)),
                ],
              ),
              Column(
                children: [
                  
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                    },
                    child: Icon(Icons.shopping_cart_outlined,color: Color.fromARGB(255, 140, 103, 73),)),
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
                  
                  Text('Profile',style: TextStyle(fontSize: 12,color:Color.fromARGB(255, 140, 103, 73),)),
                ],
              ),
              
            ],
          ),
        ),
      ),
    
      
    );
  }
}