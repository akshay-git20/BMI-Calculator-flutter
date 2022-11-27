// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                boxForapp(
                  color: Color(0xFF1D1E33),
                ).expand(),
                boxForapp(
                  color: Color(0xFF1D1E33),
                ).expand(),
              ],
            ).expand(),
            boxForapp(
              color: Color(0xFF1D1E33),
            ).expand(),
            Row(
              children: [
                boxForapp(
                  color: Color(0xFF1D1E33),
                ).expand(),
                boxForapp(
                  color: Color(0xFF1D1E33),
                ).expand(),
              ],
            ).expand(),
          ],
        ));
  }
}

class boxForapp extends StatelessWidget {
  final Color color;
  const boxForapp({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Color(0xFF1D1E33), borderRadius: BorderRadius.circular(10)),
    );
  }
}
