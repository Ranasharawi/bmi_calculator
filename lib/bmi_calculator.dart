import 'dart:math';
import 'package:flutter/material.dart';

import 'bmi_result.dart';

class BMIScreen extends StatefulWidget {
  @override
  _BMIScreenState createState() => _BMIScreenState();}
class _BMIScreenState extends State<BMIScreen> {
  bool isMale=true;
  double height=120;
  int weight=40;
  int age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'BMI Calculator',
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=true;

                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/male.png'),
                                height: 90,
                                width: 90,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text('MALE',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),)
                            ],
                          ),
                          decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:isMale? Colors.blue:Colors.grey
                          ) ,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=false;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/female.png'),
                                height: 90,
                                width: 90,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text('FEMALE',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),)
                            ],
                          ),
                          decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:!isMale? Colors.blue:Colors.grey
                          ) ,
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('HEIGHT',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color:Colors.white

                        ),),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${height .round()}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                            ),),
                          SizedBox(
                            width:5 ,
                          ),
                          Text('CM',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),),

                        ],
                      ),
                      Slider(
                          activeColor: Colors.grey,
                          value:height,
                          max: 220,
                          min: 80,
                          onChanged: (value){
                            setState(() {
                              height=value;
                            });
                            print(value.round());
                          }),

                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black
                  ),
                ),
              )
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('WEIGHT',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                              ),),
                            Text('$weight',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                              ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.black,
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: 'weight-',
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.black,
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: 'weight+',
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            )


                          ],
                        ),
                        decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey
                        ) ,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('AGE',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                              ),),
                            Text('$age',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                              ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.black,
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });},
                                  heroTag: 'age-',
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.black,
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: 'age+',
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            )


                          ],
                        ),
                        decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey
                        ) ,
                      ),
                    ),
                  ],
                ),
              )
          ),
          Container(
            color: Colors.black,
            width: double.infinity,
            child: MaterialButton(onPressed: (){
              var result=weight/ pow(height/100,2);
              print (result.round());
              Navigator.push(
                context, MaterialPageRoute(builder:
                  (context)=>BMIResultScreen(
                age: age,
                isMale: isMale,
                result: result.round(),
              ),
              )
                ,
              );
            },
              height: 60,
              child: Text(''
                  'CALCULATE',
                style: TextStyle(
                    color: Colors.white
                ),),),
          ),

        ],
      ),
    );
  }
}
