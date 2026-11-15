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