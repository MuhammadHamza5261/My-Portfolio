import 'package:first/main.dart';
import 'package:flutter/material.dart';
///stl
class Dialogbox extends StatelessWidget {
  const Dialogbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DialogSTF(),
    );
  }
}
///stf
class DialogSTF extends StatefulWidget {
  const DialogSTF({Key? key}) : super(key: key);

  @override
  State<DialogSTF> createState() => _DialogSTFState();
}

class _DialogSTFState extends State<DialogSTF> {




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
            SizedBox(
              height: 230.0,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width *0.4,
                height: MediaQuery.of(context).size.height *0.07,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                    onPressed: (){
                      showAlertDialog(context);
                    },
                    child: Text('Submit ',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                    ),
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

///Alert message show in flutter
showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: Colors.green,
      shape: RoundedRectangleBorder(
      ),
    ),
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Project Description"),
    content: Text("Do you want to continue in this project"),
    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

