import 'package:flutter/material.dart';
import 'package:food_app/home.dart';
import 'package:food_app/menu.dart';

class Cart extends StatefulWidget {
  const new({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 237, 224),
      appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 243, 237, 224),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          
          children: [
            Text('Your Order',style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold),),
            Container(
              height: 90,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: NetworkImage("https://png.pngtree.com/png-vector/20241102/ourmid/pngtree-top-view-of-a-margherita-pizza-png-image_14226822.png",),
                          fit: BoxFit.cover,
                          
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 79, 79, 79),
                              blurRadius: 4
                            )
                          ]
                        ),
                      ),SizedBox(width: 10,),
                      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          Text('Diavola."12".thin',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Text('\$14.00',style: TextStyle(fontSize: 12,color:const Color.fromARGB(255, 236, 97, 97), fontWeight: FontWeight.bold),), 
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:const Color.fromARGB(255, 236, 97, 97),
                          ),
                          shape: BoxShape.circle
                        ),
                        child: Center(child: Icon(Icons.remove,color:Color.fromARGB(255, 236, 97, 97) ,size: 15,)),
                      ),SizedBox(width: 5,),
                      Text('1',style: TextStyle(fontSize: 12,color: Colors.black,),),
                      SizedBox(width: 5,),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:const Color.fromARGB(255, 236, 97, 97),
                          ),
                          shape: BoxShape.circle
                        ),
                        child: Center(child: Icon(Icons.add,color:Color.fromARGB(255, 236, 97, 97) ,size: 15,)),
                      ),
                    ],
                  ),
                ],
              ),
              
            ),
            Divider(),
             Container(
              height: 90,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: NetworkImage("https://png.pngtree.com/png-vector/20250529/ourmid/pngtree-pizza-isolated-on-white-background-png-image_16401329.png",),
                          fit: BoxFit.cover,
                          
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(157, 79, 79, 79),
                              blurRadius: 1,
                              spreadRadius: 2,
                              
                            )
                          ]
                        ),
                      ),SizedBox(width: 10,),
                      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          Text('Fajita."15".thin',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Text('\$15.50',style: TextStyle(fontSize: 12,color:const Color.fromARGB(255, 236, 97, 97), fontWeight: FontWeight.bold),), 
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:const Color.fromARGB(255, 236, 97, 97),
                          ),
                          shape: BoxShape.circle
                        ),
                        child: Center(child: Icon(Icons.remove,color:Color.fromARGB(255, 236, 97, 97) ,size: 15,)),
                      ),SizedBox(width: 5,),
                      Text('1',style: TextStyle(fontSize: 12,color: Colors.black,),),
                      SizedBox(width: 5,),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:const Color.fromARGB(255, 236, 97, 97),
                          ),
                          shape: BoxShape.circle
                        ),
                        child: Center(child: Icon(Icons.add,color:Color.fromARGB(255, 236, 97, 97) ,size: 15,)),
                      ),
                    ],
                  ),
                ],
              ),
              
            ),
            Divider(),
            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:Color.fromARGB(255, 232, 73, 29)
                  ),
                  child: Center(child: Text('Go to checkout',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold))),
                                ),
                              ),
                
          
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                    },
                    child: Icon(Icons.home_outlined,color:const Color.fromARGB(255, 236, 97, 97) ,)),
                  Text('Home',style: TextStyle(fontSize: 12,color:const Color.fromARGB(255, 236, 97, 97),)),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Menu()));
                    },
                    child: Icon(Icons.widgets_outlined,color:Color.fromARGB(255, 140, 103, 73),)),
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