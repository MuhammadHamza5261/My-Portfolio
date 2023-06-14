import 'package:first/main.dart';
import 'package:flutter/material.dart';
///stl
class Exampledesign extends StatelessWidget {
  const Exampledesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ExampledesignSTF(),
    );
  }
}
///stf
class ExampledesignSTF extends StatefulWidget {
  const ExampledesignSTF({Key? key}) : super(key: key);

  @override
  State<ExampledesignSTF> createState() => _ExampledesignSTFState();
}

class _ExampledesignSTFState extends State<ExampledesignSTF> {

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
            Container(
              child: Row(
                children: const [
                  Myfirstrow(
                      imagepath: "assets/images/blur2.jpg",
                      text: "hamza",
                  ),
                  Myfirstrow(
                      imagepath: "assets/images/blur8.jpg",
                      text: "Flutter",
                  ),
                  Myfirstrow(
                      imagepath: "assets/images/blur3.jpg",
                      text: "Reactive Native",
                  ),
                ],
              ),
            ),
            // ///create a grid in flutter
            // Container(
            //   child: GridView.count(
            //     crossAxisCount: 3, // Number of columns
            //     children: <Widget>[
            //       Image.asset('assets/images/blur5.jpg'),
            //       Image.asset('assets/images/blur4.jpg'),
            //       Image.asset('assets/images/blur6.jpg'),
            //       Image.asset('assets/images/blur2.jpg'),
            //     ],
            //   ),
            // ),
            // Container(
            //   child: GridView.count(
            //     crossAxisCount: 2,
            //     padding: EdgeInsets.all(16),
            //     mainAxisSpacing: 16,
            //     crossAxisSpacing: 16,
            //     children: <Widget>[
            //       Image.network('https://example.com/image1.jpg'),
            //       Image.network('https://example.com/image2.jpg'),
            //       Image.network('https://example.com/image3.jpg'),
            //       Image.network('https://example.com/image4.jpg'),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
///create class to handle Images of row
class Myfirstrow extends StatelessWidget {
  final String imagepath;
  final String text;
  const Myfirstrow({Key? key, required this.imagepath, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.11,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagepath),
              fit: BoxFit.cover,
            ),
          ),
          child: Text(text,
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}



