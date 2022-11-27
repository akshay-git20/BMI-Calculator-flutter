// ignore_for_file: prefer_const_constructors
import 'package:bmi_calculator/widget/icon_content.dart';
import 'package:bmi_calculator/widget/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:velocity_x/velocity_x.dart';

const inactivecolor = Color(0xFF111328);
const activecolor = Color(0xFF1D1E33);

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR').centered(),
        ),
        body: Column(
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
                        ? activecolor
                        : inactivecolor,
                    cardchild: Iconcontent(icon: Icons.male, name: "MALE"),
                  ),
                ).expand(),
                GestureDetector(
                  onTap: () {
                    selectedgender = Gender.female;
                    setState(() {});
                  },
                  child: BoxForapp(
                    color: selectedgender == Gender.female ? activecolor : inactivecolor,
                    cardchild: Iconcontent(
                      icon: Icons.female,
                      name: "FEMALE",
                    ),
                  ),
                ).expand(),
              ],
            ).expand(),
            BoxForapp(
              color: Color(0xFF1D1E33),
              cardchild: Text(""),
            ).expand(),
            Row(
              children: [
                BoxForapp(
                  color: Color(0xFF1D1E33),
                  cardchild: Text(""),
                ).expand(),
                BoxForapp(
                  color: Color(0xFF1D1E33),
                  cardchild: Text(""),
                ).expand(),
              ],
            ).expand(),
          ],
        ));
  }
}
