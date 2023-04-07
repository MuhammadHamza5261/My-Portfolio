import 'package:first/main.dart';
import 'package:flutter/material.dart';
class Constraintbox extends StatelessWidget {
  const Constraintbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstraintboxSTF(),
    );
  }
}
///stf
class ConstraintboxSTF extends StatefulWidget {
  const ConstraintboxSTF({Key? key}) : super(key: key);

  @override
  State<ConstraintboxSTF> createState() => _ConstraintboxSTFState();
}

class _ConstraintboxSTFState extends State<ConstraintboxSTF> {
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            ///constraint box is created for decide the are use in dart screen
            Container(
              child: ConstrainedBox(
                constraints: new BoxConstraints(
                  minHeight: 200.0,
                  minWidth: 200.0,
                  maxHeight: 400.0,
                  maxWidth: 300.0,
                ),
                child:  new DecoratedBox(
                  decoration: new BoxDecoration(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


