import 'package:bmi/Constants.dart';
import 'package:flutter/material.dart';

class BottomSheetPage extends StatelessWidget {
  double age;
  double h;
  double w;
  double bmi;

  BottomSheetPage(
      {Key key,
      @required this.age,
      @required this.bmi,
      @required this.h,
      @required this.w})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: size.height * 0.07,
              width: size.width * 0.6,
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
                "age = $age",
                style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: size.height * 0.07,
              width: size.width * 0.6,
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
                "height = ${h.round()}",
                style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: size.height * 0.07,
              width: size.width * 0.6,
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
                "Weight = $w",
                style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: size.height * 0.07,
              width: size.width * 0.6,
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
                "BMI = $bmi",
                style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
