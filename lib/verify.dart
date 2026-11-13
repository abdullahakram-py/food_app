import 'package:flutter/material.dart';
import 'package:food_app/Createacc.dart';

class Verify extends StatefulWidget {
  const new({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  TextEditingController verify = TextEditingController();
  bool isverify = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 237, 224),
      ),
      backgroundColor: Color.fromARGB(255, 243, 237, 224),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          children: [
              Center(child: Text('Verify your \n  Number',style: TextStyle(fontSize: 36,color: Colors.black,fontWeight: FontWeight.bold),)),
              Text(
                textAlign: TextAlign.justify,
                'Enter the 4-digit code sent to \n +91 1234567890 ',style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 140, 103, 73) ,),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 65,
                        width: 55,
                        child: TextFormField(
                          controller: verify,
                          onChanged: (value) {
                            if(verify.text.isEmpty){
                              setState(() {
                                isverify = true;
                              });
                            }
                            else{
                              setState(() {
                                isverify = false;
                              });
                    }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                              color: Color.fromARGB(255, 232, 73, 29),
                              )
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.black
                              )
                            )
                          ),
                        ),
                      ),SizedBox(width: 20,),
                      Container(
                        height: 65,
                        width: 55,
                        child: TextFormField(
                          controller: verify,
                          onChanged: (value) {
                            if(verify.text.isEmpty){
                              setState(() {
                                isverify = true;
                              });
                            }
                            else{
                              setState(() {
                                isverify = false;
                              });
                    }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                              color: Color.fromARGB(255, 232, 73, 29),
                              )
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.black
                              )
                            )
                          ),
                        ),
                      ),SizedBox(width: 20,),
                    Container(
                        height: 65,
                        width: 55,
                        child: TextFormField(
                          controller: verify,
                          onChanged: (value) {
                            if(verify.text.isEmpty){
                              setState(() {
                                isverify = true;
                              });
                            }
                            else{
                              setState(() {
                                isverify = false;
                              });
                    }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                              color: Color.fromARGB(255, 232, 73, 29),
                              )
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.black
                              )
                            )
                          ),
                        ),
                      ),SizedBox(width: 20,),
                      Container(
                        height: 65,
                        width: 55,
                        child: TextFormField(
                          controller: verify,
                          onChanged: (value) {
                            if(verify.text.isEmpty){
                              setState(() {
                                isverify = true;
                              });
                            }
                            else{
                              setState(() {
                                isverify = false;
                              });
                    }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                              color: Color.fromARGB(255, 232, 73, 29),
                              )
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.black
                              )
                            )
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
                isverify == true?
                Row(
                  children: [
                    Text(
                          
                          'Please verify!',style: TextStyle(fontSize: 12,color:Color.fromARGB(255, 232, 73, 29),),),
                  ],
                ) : Container(),
                Text(
                      
                      'Didnt get a code?',style: TextStyle(fontSize: 12,color:Color.fromARGB(255, 140, 103, 73) ,),),
                      Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    if(verify.text.isEmpty){
                      setState(() {
                        isverify = true;
                      });
                    }
                    else{
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Createacc()));
                    }
                  },
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:Color.fromARGB(255, 140, 103, 73),
                    ),
                    child: Center(child: Text('Verify',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold))),
                  ),
                ),
                            ),
          ],
        ),
      ),
    );
  }
}