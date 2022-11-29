// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bmi_calculator/constraints/calculator_brain.dart';
import 'package:bmi_calculator/constraints/constraint.dart';
import 'package:bmi_calculator/pages/input_page.dart';
import 'package:bmi_calculator/widget/button_all.dart';
import 'package:bmi_calculator/widget/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';

class Resultpage extends StatelessWidget {
  final CalculatorBrain calcu;
  const Resultpage({
    Key? key,
    required this.calcu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    calcu.calculatebmi();
    return Scaffold(
        appBar: AppBar(
          title: "BMI Calculator".text.make(),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            "Your Result".text.textStyle(ktitletext).make(),
            BoxForapp(
                color: kactivecolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    calcu.getresult().text.textStyle(kresluttext).make(),
                    calcu.calculatebmi().text.textStyle(kbmitext).make(),
                    calcu
                        .getinterpretation()
                        .text
                        .textStyle(kbodytext)
                        .align(TextAlign.center)
                        .make()
                  ],
                )).expand(),
            Calculatebutton(
                    onpress: (() {
                      Navigator.pop(context);
                    }),
                    name: "RE-CALCULATE")
                .h10(context)
          ],
        ));
  }
}
