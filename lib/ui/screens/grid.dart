import 'package:first/colors/colors.dart';
import 'package:first/main.dart';
import 'package:flutter/material.dart';
///stl
class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Gridstf(),
    );
  }
}
///stf
class Gridstf extends StatefulWidget {
  const Gridstf({Key? key}) : super(key: key);

  @override
  State<Gridstf> createState() => _GridstfState();
}

class _GridstfState extends State<Gridstf> {


  List<String> images = [
    "assets/images/blur2.jpg",
    "assets/images/blur3.jpg",
    "assets/images/blur4.jpg",
    "assets/images/blur5.jpg",
  ];

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
            ///Grid
            Container(
              color: AppColors.primary,
              child:  GridView.count(
             crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            shrinkWrap: true,
            children: List.generate(
              images.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('${images[index]}'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20.0),
                    ),
                  ),
                ),
              );
            },
            ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

