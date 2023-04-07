import 'package:first/main.dart';
import 'package:flutter/material.dart';
///stl
class Tableshow extends StatelessWidget {
  const Tableshow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TableshowSTF(),
    );
  }
}
///stf
class TableshowSTF extends StatefulWidget {
  const TableshowSTF({Key? key}) : super(key: key);

  @override
  State<TableshowSTF> createState() => _TableshowSTFState();
}

class _TableshowSTFState extends State<TableshowSTF> {
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
            ///create a table in flutter
            Container(
              child: Table(
                border: TableBorder.all(),
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Text('Google',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.red,
                        ),
                        ),
                      ),
                      TableCell(
                        child: Text('Flutter',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.blue
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Text('Facebook',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      TableCell(
                        child: Text('React Native',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




