import 'dart:math';

import 'package:bmi/Constants.dart';
import 'package:bmi/Pages/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fluid_slider/flutter_fluid_slider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double age = 25.00;
  double myWeight = 70.00;
  double myHeigt = 150;
  bool isMale = true;

  var boxDecoration = BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(offset: Offset(2, 2), color: titleColor, blurRadius: 5),
        BoxShadow(offset: Offset(-4, -4), color: Colors.white, blurRadius: 5)
      ]);
  var buttonBoxDecoration =
      BoxDecoration(borderRadius: BorderRadius.circular(30), boxShadow: [
    BoxShadow(offset: Offset(2, 2), color: titleColor, blurRadius: 5),
    BoxShadow(offset: Offset(-2, -2), color: Colors.white, blurRadius: 5)
  ]);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height * 0.15,
              alignment: Alignment.center,
              child: Text(
                "BMI Calculator",
                style: TextStyle(color: titleColor, fontSize: 26.0),
              ),
            ),
            Container(
              width: double.infinity,
              height: size.height * 0.105,
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          right: 10, left: 20, bottom: 10, top: 20),
                      decoration: BoxDecoration(
                          color: isMale ? primaryColor : backgroundColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(2, 2),
                                color: titleColor,
                                blurRadius: 5),
                            BoxShadow(
                                offset: Offset(-4, -4),
                                color: Colors.white,
                                blurRadius: 5)
                          ]),
                      alignment: Alignment.center,
                      child: Text(
                        "Male",
                        style: TextStyle(
                            color: isMale ? myWhite : textColor, fontSize: 18),
                      ),
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          right: 20, left: 10, bottom: 10, top: 20),
                      decoration: BoxDecoration(
                          color: isMale ? backgroundColor : primaryColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(2, 2),
                                color: titleColor,
                                blurRadius: 5),
                            BoxShadow(
                                offset: Offset(-4, -4),
                                color: Colors.white,
                                blurRadius: 5)
                          ]),
                      alignment: Alignment.center,
                      child: Text(
                        "Female",
                        style: TextStyle(
                            color: isMale ? textColor : myWhite, fontSize: 18),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
                child: Container(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    child: Container(
                      margin: EdgeInsets.only(
                          right: 10, left: 20, bottom: 10, top: 20),
                      decoration: boxDecoration,
                      alignment: Alignment.center,
                      child: Container(
                        height: double.infinity,
                        margin: const EdgeInsets.all(20),
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: FluidSlider(
                            value: myHeigt,
                            onChanged: (value) {
                              setState(() {
                                myHeigt = value;
                              });
                            },
                            min: 100,
                            max: 200,
                            thumbColor: backgroundColor,
                            sliderColor: primaryColor,
                            valueTextStyle: TextStyle(
                                color: titleColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            labelsTextStyle: TextStyle(
                                color: myWhite,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                                right: 20, left: 10, bottom: 10, top: 20),
                            decoration: boxDecoration,
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Weight",
                                  style: TextStyle(
                                      color: textColor, fontSize: 18.00),
                                ),
                                Text(
                                  "${myWeight.round()}",
                                  style: TextStyle(
                                    color: titleColor,
                                    fontSize: 50,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      decoration: buttonBoxDecoration,
                                      child: FloatingActionButton(
                                          heroTag: 1,
                                          elevation: 0,
                                          backgroundColor: backgroundColor,
                                          child: Icon(
                                            Icons.remove,
                                            color: titleColor,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              if (myWeight == 0) {
                                                myWeight = 1;
                                              } else {
                                                myWeight--;
                                              }
                                            });
                                          }),
                                    ),
                                    Container(
                                      decoration: buttonBoxDecoration,
                                      child: FloatingActionButton(
                                        heroTag: 2,
                                        elevation: 0,
                                        backgroundColor: backgroundColor,
                                        child: Icon(
                                          Icons.add,
                                          color: titleColor,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            myWeight++;
                                          });
                                        },
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                                right: 20, left: 10, bottom: 10, top: 20),
                            decoration: boxDecoration,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Age",
                                  style: TextStyle(
                                      color: textColor, fontSize: 18.00),
                                ),
                                Text(
                                  "${age.round()}",
                                  style: TextStyle(
                                    color: titleColor,
                                    fontSize: 50,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      decoration: buttonBoxDecoration,
                                      child: FloatingActionButton(
                                          heroTag: 3,
                                          elevation: 0,
                                          backgroundColor: backgroundColor,
                                          child: Icon(
                                            Icons.remove,
                                            color: titleColor,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              if (age == 0) {
                                                age = 1;
                                              } else {
                                                age--;
                                              }
                                            });
                                          }),
                                    ),
                                    Container(
                                      decoration: buttonBoxDecoration,
                                      child: FloatingActionButton(
                                        heroTag: 4,
                                        elevation: 0,
                                        backgroundColor: backgroundColor,
                                        child: Icon(
                                          Icons.add,
                                          color: titleColor,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            age++;
                                          });
                                        },
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            )),
            Container(
              width: double.infinity,
              height: size.height * 0.15,
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: size.height * 0.07,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {
                      print(myHeigt);
                      double result = myWeight / pow(myHeigt / 100, 2);
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Resultpage(
                            result: result,
                            age: age,
                            h: myHeigt,
                            w: myWeight,
                          );
                        },
                      ));
                    },
                    child: Text(
                      "Let's Begin",
                      style: TextStyle(color: myWhite, fontSize: 18),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
