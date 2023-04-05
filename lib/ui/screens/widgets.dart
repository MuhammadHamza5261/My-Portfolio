import 'package:first/main.dart';
import 'package:flutter/material.dart';
///stl
class example extends StatelessWidget {
  const example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Number of Items'),
      ),
      body: exampleSTF(),
    );
  }
}
///stf
class exampleSTF extends StatefulWidget {
  const exampleSTF({Key? key}) : super(key: key);

  @override
  State<exampleSTF> createState() => _exampleSTFState();
}

class _exampleSTFState extends State<exampleSTF> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            ///cREATE A bUTTON WITH tHE help of container
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: (){
                print('the button is tapped');
              },

             ///Create a  buuton with a help of container
              child: Container(
                height: 60,
                padding: EdgeInsets.all(8.0,),
                margin: EdgeInsets.symmetric(horizontal: 8.0,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0,),
                  color: Colors.black38,
                ),
                child: Center(
                  child: Text('Engage',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.purple,
                    ),
                  ),
                ),

              ),
              ///how to use expanded widgets in flutter

            ),
            SizedBox(
              height: 20.0,
            ),
            SingleChildScrollView(
              child: Container(
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Image.asset( 'assets/images/flutter.png'),
                    ),
                    Expanded(
                       flex: 2,
                        child: Image.asset('assets/images/flutter.png'),
                    ),
                    Expanded(
                        child: Image.asset('assets/images/flutter.png'),
                    ),
                    Expanded(
                      child: Image.asset('assets/images/flutter.png'),
                    ),
                    Expanded(
                      flex: 2,
                      child: Image.asset('assets/images/flutter.png'),
                    ),
                    Expanded(
                      child: Image.asset('assets/images/flutter.png'),
                    ),
                    Expanded(
                      child: Image.asset('assets/images/flutter.png'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

