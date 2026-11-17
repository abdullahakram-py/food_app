import 'package:flutter/material.dart';

class Logic1 extends StatefulWidget {
  const new({super.key});

  @override
  State<Logic1> createState() => _Logic1State();
}

class _Logic1State extends State<Logic1> {
  TextEditingController salary=TextEditingController();
  TextEditingController leaves=TextEditingController();
  double  fine=0;
  double  tax=0;
  double  fsalary=0;
  double  bonus=0;
  String remarks = "";
  bool isshow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                
                controller: salary,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Salary',hintStyle: TextStyle(fontSize: 12,color: Colors.black),
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
              Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: leaves,
            decoration: InputDecoration(
              hintText: 'Leaves',hintStyle: TextStyle(fontSize: 12,color: Colors.black),
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
        
                    Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    fine=double.parse(leaves.text)*200;
                    
                  });
                    if(double.parse(leaves.text)<=1)
                    {
                      setState(() {
                        bonus = double.parse(salary.text)*0.2;
                        remarks  = "Excellent";
                        
                      });
                        
                    }
                    else if(double.parse(leaves.text)>=1 && double.parse(leaves.text)<=4)
                    {
                      setState(() {
                        bonus = double.parse(salary.text)*0.1;
                          remarks  = "Good";
                      });
                      
                    }
                    else{
                        setState(() {
                        bonus = 0;
                          remarks  = "Terminate";
                      });
                      
                    }
                      
                    
                    setState(() {
                      fsalary =  double.parse(salary.text)+bonus-fine;
                      tax  =fsalary*0.05;
                      isshow = true;
                    });
                  
                  },
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:Color.fromARGB(255, 232, 73, 29)
                  ),
                  child: Center(child: Text('Calculate',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold))),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isshow=false;
                  salary.clear();
                  leaves.clear();
                  fine=0;
                  bonus=0;
                  fsalary=0;
                  remarks="";
                });
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
                      child: Center(child: Text('Reset',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold))),
                    ),
              ),
            ),
              isshow == true?    Column(
              children: [
                Text("Inital Salary: "+ salary.text),
                Text("No of Leaves: "+ leaves.text),
                Text("Fine: "+ fine.toString()),
                Text("Bonus: "+ bonus.toString()),
                Text("Tax: "+ tax.toString()),
                Text("Final Salary: "+ (fsalary-tax).toString()),
                Text("Remarks: "+ remarks),
              ],
            ):Container(),
              
            
          ],
        ),

      ),
        
    );
  }
}