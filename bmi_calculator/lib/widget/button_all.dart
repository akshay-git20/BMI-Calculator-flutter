import 'package:bmi_calculator/constraints/constraint.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PlusminusButton extends StatelessWidget {
  final VoidCallback onpres;
  final IconData icon;
  const PlusminusButton({
    Key? key,
    required this.onpres,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(CircleBorder()),
                backgroundColor: MaterialStatePropertyAll(Color(0xFF8D8E98))),
            onPressed: onpres,
            child: Icon(icon))
        .scale(scaleValue: 1.5);
  }
}

class Calculatebutton extends StatelessWidget {
  final VoidCallback onpress;
  final String name;
  const Calculatebutton({
    Key? key,
    required this.onpress,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onpress,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kbottoncontainercolor)),
        child: name.text.bold.xl2.make());
  }
}