import 'package:bmi/Constants.dart';
import 'package:bmi/Pages/BottomSheetPage.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Resultpage extends StatefulWidget {
  double result;
  double h;
  double w;
  double age;
  Resultpage(
      {Key key,
      @required this.result,
      @required this.age,
      @required this.h,
      @required this.w})
      : super(key: key);

  @override
  _ResultpageState createState() => _ResultpageState();
}

String getResultName(double result) {
  if (result < 18.5) {
    return "Underweight";
  } else if (result > 18 && result < 25) {
    return "Normalweight";
  } else {
    return "Overweight";
  }
}

class _ResultpageState extends State<Resultpage> {
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
                "BMI Result",
                style: TextStyle(color: titleColor, fontSize: 26.0),
              ),
            ),
            Expanded(
                child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(1000),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(2, 2),
                              color: titleColor,
                              blurRadius: 20),
                          BoxShadow(
                              offset: Offset(-4, -4),
                              color: Colors.white,
                              blurRadius: 20)
                        ]),
                    child: CircularPercentIndicator(
                      lineWidth: 15,
                      addAutomaticKeepAlive: true,
                      circularStrokeCap: CircularStrokeCap.round,
                      radius: size.height * 0.25,
                      animationDuration: 1500,
                      animation: true,
                      percent: ((widget.result / 55) * 100) / 100,
                      progressColor: primaryColor,
                      backgroundColor: backgroundColor,
                      center: Text(
                        "${widget.result.round()} ",
                        style: TextStyle(color: titleColor, fontSize: 50),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: size.height * .1,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "You are ",
                        style: TextStyle(color: textColor, fontSize: 16),
                      ),
                      Text(
                        "${getResultName(widget.result)}",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return BottomSheetPage(
                              age: widget.age,
                              bmi: widget.result,
                              h: widget.h,
                              w: widget.w);
                        },
                      );
                    },
                    child: Container(
                      height: size.height * 0.07,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(2, 2),
                                color: titleColor,
                                blurRadius: 10),
                            BoxShadow(
                                offset: Offset(-4, -4),
                                color: Colors.white,
                                blurRadius: 10)
                          ]),
                      alignment: Alignment.center,
                      child: Text(
                        "Details",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
