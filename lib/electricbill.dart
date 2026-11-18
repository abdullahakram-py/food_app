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
      
      body: SingleChildScrollView(
        child: Padding(
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
                                Column(
                                  children: [
                                    Container(
                                      height: 30,
                                      width:MediaQuery.of(context).size.width*0.9,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.blueAccent
                                        ),
                                        color: const Color.fromARGB(255, 179, 213, 241)
                                      ),
                                      child: Center(child: Text("LESCO Charges  لیسکو کے چارجز",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 179, 213, 241)
                                          ),
                                          child: Center(child: Text("Units Consumed  صرف یونٹس",style: TextStyle(fontSize: 12,color: Colors.red,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          child: Center(
                                            child: Text(unit.text),
                                          ),
                                          ),
                                      ],
                                    ),
                                      Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 179, 213, 241)
                                          ),
                                          child: Center(child: Text("Cost of electricity  بجلی کی لاگت",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          child: Center(
                                            child: Text(price.toString()),
                                          ),
                                          
                                          ),
                                      ],
                                    ),
                                                                        Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 179, 213, 241)
                                          ),
                                          child: Center(child: Text("Meter rent  میٹر کا کرایہ",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          child: Center(
                                            child: Text("400"),
                                          ),
                                          
                                          ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 179, 213, 241)
                                          ),
                                          child: Center(child: Text("Service rent  خدمت کا کرایہ",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          child: Center(
                                            child: Text("500"),
                                          ),
                                          
                                          ),
                                      ],
                                    ),
                                                                      Row(
                                      children: [
                                        Container(
                                          height: 50,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 179, 213, 241)
                                          ),
                                          child: Center(child: Text("Fuel price adjustment\n  ایندھن کی قیمت میں ایڈجسٹمنٹ",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 50,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          child: Center(
                                            child: Text("600"),
                                          ),
                                          

                                          ),
                                      ],
                                    ),
                                      Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 179, 213, 241)
                                          ),
                                          child: Center(child: Text("F.C SUPERCHARGE",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 179, 213, 241)
                                          ),
                                          child: Center(child: Text("TARIFF ADJUSTMENT",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 179, 213, 241)
                                          ),
                                          child: Center(child: Text("FIXED CHARGES",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 179, 213, 241)
                                          ),
                                          ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                      Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 179, 213, 241)
                                          ),
                                          child: Center(child: Text("TOTAL ",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                    Divider(),
                                      Column(
                                  children: [
                                    Container(
                                      height: 30,
                                      width:MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.blueAccent
                                        ),
                                        color: const Color.fromARGB(255, 244, 152, 183)
                                      ),
                                      child: Center(child: Text("GOVT Charges سرکاری چارجز",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 244, 152, 183)
                                          ),
                                          child: Center(child: Text("ELECTRICITY DUTY  بجلی پر ڈیوٹی",style: TextStyle(fontSize: 12,color: Colors.red,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                      Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 244, 152, 183)
                                          ),
                                            ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                                                        Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 244, 152, 183)
                                          ),
                                          child: Center(child: Text("GST",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 244, 152, 183)
                                          ),
                                          child: Center(child: Text("INCOME TAX انکم ٹیکس",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                                                      Row(
                                      children: [
                                        Container(
                                          height: 50,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 244, 152, 183)
                                          ),
                                          child: Center(child: Text("EXTRA TAX ",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 50,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                      Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 244, 152, 183)
                                          ),
                                          child: Center(child: Text("FURTHER TAX",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 244, 152, 183)
                                          ),
                                          child: Center(child: Text("RS TAX",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 244, 152, 183)
                                          ),
                                          child: Center(child: Text("GST ON FPA",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 244, 152, 183)
                                          ),child: Center(child: Text("EXTRA TAX ON FPA",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                      
                                          ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                      Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 244, 152, 183)
                                          ),
                                          child: Center(child: Text("FURTHER TAX ON FPA ",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 244, 152, 183)
                                          ),
                                          child: Center(child: Text("INCOME TAX ON FPA ",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                      Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 244, 152, 183)
                                          ),
                                          child: Center(child: Text("ED  ON FPA ",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 244, 152, 183)
                                          ),
                                          child: Center(child: Text("RS TAX  ON FPA ",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 244, 152, 183)
                                          ),
                                          child: Center(child: Text("TOTAL ",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 179, 213, 241)
                                          ),
                                          child: Center(child: Text("PROG IT PAID FP",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                      Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 179, 213, 241)
                                          ),
                                          child: Center(child: Text("PROG GST PAID FP",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ), Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 179, 213, 241)
                                          ),
                                          child: Center(child: Text("DEFFERED AMOUNT",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                      Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 179, 213, 241)
                                          ),
                                          child: Center(child: Text("UN-PAID DEBIT",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                      Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 179, 213, 241)
                                          ),
                                          child: Center(child: Text("BILL ADJUSTMENT",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                    
                                    

                                    
                                    
                                    
                                    

                                    Divider(),
                                    Container(
                                      height: 30,
                                      width:MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.blueAccent
                                        ),
                                        
                                      ),
                                      child: Center(child: Text("TOTAL CHARGES",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          child: Center(child: Text("AREAR/AGE  ",style: TextStyle(fontSize: 12,color: Colors.red,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                                                                   
                                          

                                          ),
                                      ],
                                    ),
                                      Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          child: Center(child: Text("CURRENT BILLS",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          
                                          ),
                                      ],
                                    ),
                                                                        Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          child: Center(child: Text("INSTALLMENT",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          child: Center(child: Text("SUBSIDIES",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                      
                                            
                                        
                                            ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                                                      Row(
                                      children: [
                                        Container(
                                          height: 50,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          child: Center(child: Text("TOTAL FPA",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 50,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                      Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                              ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 179, 213, 241)
                                          ),
                                          child: Center(child: Text("PAYABLE WITH DUE DATE",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 179, 213, 241)
                                          ),
                                          child: Center(child: Text("LP SUPERCHARGE",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                    
                                      Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            color: const Color.fromARGB(255, 179, 213, 241)
                                          ),
                                          child: Center(child: Text("PAYABLE AFTER DUE DATE ",style: TextStyle(fontSize: 12,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                        Container(
                                          height: 30,
                                          width:MediaQuery.of(context).size.width*0.4,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blueAccent
                                            ),
                                            
                                          ),
                                          ),
                                      ],
                                    ),
                                    Divider(),
                                
                                
                                
                              
                                
                              
                                
                                
                                  ],
                                )
                              
                                
                                
                                
                              
                                
                              
                                
                                
                                  ],
                                )
                                // isshow==true?
                                // Column(
                                //   children: [
                                //     Text('Name:'+ name.text),
                                //     Text("Cnic:"+cnic.text),
                                //     Text("Price: \$" + price.toString()),
                                //     Text("Unit: " + unit.text),
                                //     Text("tax:"+tax.toString()),
                                //     Text("Subtotal:"+subtotal.toString()),
                                //     Text("Total:"+total.toString()),
                                //   ],
                                // ):Container(),
            ],
          ),
        ),
      ),
    );
  }
}