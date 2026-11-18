import 'package:flutter/material.dart';

class Electricbill extends StatefulWidget {
  const new({super.key});

  @override
  State<Electricbill> createState() => _ElectricbillState();
}

class _ElectricbillState extends State<Electricbill> {
  TextEditingController name = TextEditingController();
  TextEditingController cnic = TextEditingController();
  TextEditingController unit = TextEditingController();
  double price = 27;
  double subtotal = 0;
  double total = 0;
  double tax = 0;
  bool   isshow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 237, 224),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          children: [
            TextFormField(
                                
                                controller: name,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Name',hintStyle: TextStyle(fontSize: 12,color: Colors.black),
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
                              TextFormField(
                                controller: cnic,
                                
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'CNIC',hintStyle: TextStyle(fontSize: 12,color: Colors.black),
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
                              TextFormField(
                                
                                controller: unit,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'No.Of Units',hintStyle: TextStyle(fontSize: 12,color: Colors.black),
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
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    subtotal = double.parse(unit.text)*price;
                                    tax = subtotal*0.17;
                                    isshow = true;
                                  });
                                  setState(() {
                                    total=subtotal+tax;
                                  });
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
                              isshow==true?
                              Column(
                                children: [
                                  Text('Name:'+ name.text),
                                  Text("Cnic:"+cnic.text),
                                  Text("Price: \$" + price.toString()),
                                  Text("Unit: " + unit.text),
                                  Text("tax:"+tax.toString()),
                                  Text("Subtotal:"+subtotal.toString()),
                                  Text("Total:"+total.toString()),
                                ],
                              ):Container(),
          ],
        ),
      ),
    );
  }
}