import 'package:bmi_calculator/constraints/constraint.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class Iconcontent extends StatelessWidget {
  final IconData icon;
  final String name;
  const Iconcontent({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 100,
        ).centered(),
        SizedBox(
          height: 10,
        ),
        name.text.bold.textStyle(klabeltext).make()
      ],
    );
  }
}
