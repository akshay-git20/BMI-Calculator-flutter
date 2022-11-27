import 'package:flutter/material.dart';

class BoxForapp extends StatelessWidget {
  final Color color;
  final Widget cardchild;
  const BoxForapp({
    Key? key,
    required this.color,
    required this.cardchild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10)),
      child: cardchild,
    );
  }
}
