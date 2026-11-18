import 'package:flutter/material.dart';

class Bill extends StatefulWidget {
  const Bill({super.key});

  @override
  State<Bill> createState() => _BillState();
}

class _BillState extends State<Bill> {
    TextEditingController name =TextEditingController();
    TextEditingController  Quantity = TextEditingController();
    double price=300;
    double subtotal=0;
    double tax=0;
    double total=0;
    bool   isshow = false;
    bool isChecked = false;
    double  discount=  0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
      backgroundColor: Color.fromARGB(255, 243, 237, 224),
      body: Column(
        children: [
          Stack(
            children:[ Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Image.network('https://static.vecteezy.com/system/resources/previews/021/602/386/large_2x/photography-of-coffee-beans-spilling-from-a-jar-on-pieces-of-wood-with-a-gray-background-suitable-fors-of-food-and-beverage-products-with-landscape-format-free-photo.JPG',fit: BoxFit.cover,),
            ),
            Positioned(
              left: 0,
              right: 0,
              top:0,
              bottom: 0,
              child: Center(child: Text('Buttlers Choclate Cafe',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),)))
            ]
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Invoice',style: TextStyle(fontSize: 30,color: Colors.brown,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 300,
                            child: TextFormField(
                              
                              controller: name,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Coffee name',hintStyle: TextStyle(fontSize: 12,color: Colors.black),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.black
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
                          ),
                          Container(
                            width: 150,
                            child: TextFormField(
                              
                              controller: Quantity,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Quantity',hintStyle: TextStyle(fontSize: 12,color: Colors.black),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.black
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
                          ),
                          
                        ],
                      
                      ),
                    ),
                    
                      
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Checkbox(
                                value: isChecked,
                                activeColor: Colors.indigo,
                                checkColor: Colors.white,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    isChecked = newValue ?? false;
                                  });
                                },
                              ),
                              Text('Friday sale',style: TextStyle(fontSize: 12,color: Colors.black),)
                    ],
                  ),
                ),
                    Padding(
                padding: const EdgeInsets.all(8.0),
                
                  child: GestureDetector(
                    onTap: () {
                    
                      setState(() {
                        subtotal = double.parse(Quantity.text)*price;
                        tax = subtotal*0.05;
                          isshow= true;
                        
                      });
                      if(isChecked)
                      {
                        setState(() {
                          discount=  subtotal*0.05;
                            total = subtotal+tax-discount;
                      
                        });
                      }
                      else{
                          setState(() {
                          discount=  0;
                            total = subtotal+tax-discount;
                          });
                      }
                    },
                    child: Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:Colors.brown
                            ),
                            child: Center(child: Text('Genrate Bill',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold))),
                          ),
                  ),
                ),
              
            
            isshow == true
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Text("Coffee: " + name.text),
                          Text("Price: \$" + price.toString()),
                          Text("Quantity: " + Quantity.text),
                          Text("Discount: " + discount.toString()),
                          Text("SubTotal: \$" + subtotal.toString()),
                          Text("tax: \$" + tax.toString()),
                          Text("Total: \$" + total.toString()),
                          
                      ],
                    ),
                  )
                : Container(),
            
          ],
      ),
      
    );
  }
}