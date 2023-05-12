import 'package:first/main.dart';
import 'package:flutter/material.dart';
class Grid_View_Screen extends StatelessWidget {
  const Grid_View_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        title: Text('Flutter Grid View'),
      ),
      body: Grid_View_STF(),
    );
  }
}
///stf
class Grid_View_STF extends StatefulWidget {
  const Grid_View_STF({Key? key}) : super(key: key);

  @override
  State<Grid_View_STF> createState() => _Grid_View_STFState();
}

class _Grid_View_STFState extends State<Grid_View_STF> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        children: [
          Container(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(10,(index){
                return Center(
                  child: Text('Item $index',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

