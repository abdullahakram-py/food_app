import 'package:flutter/material.dart';
import 'package:food_app/verify.dart';

class Address extends StatefulWidget {
  const new({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  TextEditingController adress = TextEditingController();
  TextEditingController delivery = TextEditingController();
  bool isadress = false;
  bool isdelivery = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color.fromARGB(255, 243, 237, 224),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Text('Where to?',style: TextStyle(fontSize: 36,color: Colors.black,fontWeight: FontWeight.bold),)),
              Text(
                    textAlign: TextAlign.justify,
                    ' We’ll save this as your default',style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 140, 103, 73) ,),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        onChanged: (value) {
                          if(adress.text.isEmpty){
                            setState(() {
                              isadress = true;
                            });
                          }
                          else{
                            setState(() {
                              isadress = false;
                            });
                          }
                        },
                        controller: adress,
                        decoration: InputDecoration(
                          
                          border: InputBorder.none,
                          hintText: "Street Address" , hintStyle: TextStyle(fontSize: 12,color:Color.fromARGB(255, 140, 103, 73)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.white
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color:Color.fromARGB(255, 232, 73, 29),
                            )
                          )
                        ),
                      ),
                    ),isadress == true?
                    Row(
                      children: [
                        Text("Enter your Address!",style: TextStyle(fontSize: 12,color:Color.fromARGB(255, 232, 73, 29)),),
                      ],
                    ) : Container(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Apt / suit (Optional)" , hintStyle: TextStyle(fontSize: 12,color:Color.fromARGB(255, 140, 103, 73)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.white
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color:Color.fromARGB(255, 232, 73, 29),
                            )
                          )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        onChanged: (value) {
                          if(delivery.text.isEmpty){
                          setState(() {
                            isdelivery = true;
                          });
                          }
                          else{
                            setState(() {
                              isdelivery = false;
                            });
                          }
                        },
                        controller:delivery ,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Delivery Instruction" , hintStyle: TextStyle(fontSize: 12,color:Color.fromARGB(255, 140, 103, 73)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.white
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color:Color.fromARGB(255, 232, 73, 29),
                            )
                          )
                        ),
                      ),
                    ),isdelivery == true?
                    
                      Row(
                        children: [
                          Text("Enter Delivery Instructions!",style: TextStyle(fontSize: 12,color:Color.fromARGB(255, 232, 73, 29)),),
                        ],
                      ) : Container(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color:Color.fromARGB(255, 140, 103, 73),
                            width: 5,
                          ),
                          image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLYNzbZtmx1ITd6ZZO8pkXDKHxg8ceHhWNTJeehlK4WZWs5A9cbhHRKdg&s=10",),fit: BoxFit.cover)
                        ),
                      ),
                    ),
          
            ],
          ),
        ),
      ),
      bottomNavigationBar:                     GestureDetector(
        onTap: () {
          if(adress.text.isEmpty){
            setState(() {
              isadress = true;
            });
          }
          else if(delivery.text.isEmpty){
            setState(() {
              isdelivery = true;
            });
          }
          else{
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Verify()));
          }
        },
        child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Color.fromARGB(255, 232, 73, 29)
                      ),
                      child: Center(child: Text('Confirm Address',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold))),
                                    ),
                                  ),
      ),
          
          
    );
  }
}