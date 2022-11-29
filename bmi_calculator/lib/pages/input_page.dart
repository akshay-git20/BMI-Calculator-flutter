// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors
import 'dart:convert';

import 'package:bmi_calculator/constraints/calculator_brain.dart';
import 'package:bmi_calculator/constraints/constraint.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:bmi_calculator/widget/button_all.dart';
import 'package:bmi_calculator/widget/icon_content.dart';
import 'package:bmi_calculator/widget/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

enum Gender {
  male,
  female;
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedgender;
  int height = 180;
  int weight = 56;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR').centered(),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    selectedgender = Gender.male;
                    setState(() {});
                  },
                  child: BoxForapp(
                    color: selectedgender == Gender.male
                        ? kactivecolor
                        : kinactivecolor,
                    cardchild: Iconcontent(icon: Icons.male, name: "MALE"),
                  ),
                ).expand(),
                GestureDetector(
                  onTap: () {
                    selectedgender = Gender.female;
                    setState(() {});
                  },
                  child: BoxForapp(
                    color: selectedgender == Gender.female
                        ? kactivecolor
                        : kinactivecolor,
                    cardchild: Iconcontent(
                      icon: Icons.female,
                      name: "FEMALE",
                    ),
                  ),
                ).expand(),
              ],
            ).expand(),
            BoxForapp(
              color: kinactivecolor,
              cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "HEIGHT".text.textStyle(klabeltext).make(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        "$height".text.textStyle(knumbertext).make(),
                        "cm".text.textStyle(klabeltext).make()
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                          thumbColor: Colors.red,
                          inactiveTrackColor: klabelcolor,
                          activeTrackColor: Colors.white,
                          overlayColor: Color(0x1fEB1555),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15)),
                      child: Slider(
                          value: height.toDouble(),
                          min: 60,
                          max: 250,
                          onChanged: ((newvalue) {
                            setState(() {
                              height = newvalue.round();
                            });
                          })),
                    )
                  ]),
            ).expand(),
            Row(
              children: [
                BoxForapp(
                  color: kinactivecolor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      "WEIGHT".text.textStyle(klabeltext).make(),
                      "$weight".text.textStyle(knumbertext).make(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          PlusminusButton(
                            onpres: (() {
                              setState(() {
                                weight--;
                              });
                            }),
                            icon: CupertinoIcons.minus,
                          ),
                          PlusminusButton(
                            onpres: (() {
                              setState(() {
                                weight++;
                              });
                            }),
                            icon: CupertinoIcons.add,
                          )
                        ],
                      )
                    ],
                  ),
                ).expand(),
                BoxForapp(
                  color: kinactivecolor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      "AGE".text.textStyle(klabeltext).make(),
                      "$age".text.textStyle(knumbertext).make(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          PlusminusButton(
                            onpres: (() {
                              setState(() {
                                age--;
                              });
                            }),
                            icon: CupertinoIcons.minus,
                          ),
                          PlusminusButton(
                            onpres: (() {
                              setState(() {
                                age++;
                              });
                            }),
                            icon: CupertinoIcons.add,
                          )
                        ],
                      )
                    ],
                  ),
                ).expand(),
              ],
            ).expand(),
            Calculatebutton(
              onpress: (() {
                CalculatorBrain calc =
                    CalculatorBrain(height: height, weight: weight);
                Navigator.push(context, MaterialPageRoute(builder: ((context) => Resultpage(calcu: calc,))));
              }),
              name: "CALCULATE",
            ).h10(context)
          ],
        ));
  }
}
