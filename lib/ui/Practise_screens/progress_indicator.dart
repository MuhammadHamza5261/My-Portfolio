import 'package:first/main.dart';
import 'package:flutter/material.dart';
///stf
class Progreess_Indicator extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Progreess_Indicator> {
  bool isLoading = true;

  void getData() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
          title: Text('Progress Indictor'),
        ),
        body: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : Text('All the data of this is loaded',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 23.0,
                color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
