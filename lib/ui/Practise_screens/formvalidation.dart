import 'package:first/main.dart';
import 'package:flutter/material.dart';
///stl
class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ButtonsSTF(),
    );
  }
}
///stf
class ButtonsSTF extends StatefulWidget {
  const ButtonsSTF({Key? key}) : super(key: key);

  @override
  State<ButtonsSTF> createState() => _ButtonsSTFState();
}

class _ButtonsSTFState extends State<ButtonsSTF> {
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child:Column(
          children: [
            ///Drop down button
            Container(
              

            ),
          ],
        ),
      ),
    );
  }
}

