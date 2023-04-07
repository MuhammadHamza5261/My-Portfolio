import 'package:flutter/material.dart';


class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Flutter Form Demo';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}
// Create a Form widget.
///stf
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
// Create a corresponding State class, which holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  late double height;
  late double width;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;


    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10.0),
             color: Colors.grey[200],
              ),
            child: TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0,),
                icon: const Icon(Icons.person),
                hintText: 'Enter your full name',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          Container(
            child: TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.phone),
                hintText: 'Enter a phone number',
                // labelText: 'Phone',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter valid phone number';
                }
                return null;
              },
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.calendar_today),
              hintText: 'Enter your date of birth',
              // labelText: 'Dob',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter valid date';
              }
              return null;
            },
          ),
           ///weshop email input field
          // Container(
          //   key: _formKey,
          //   child: Column(
          //     children: [
          //       Container(
          //         margin: EdgeInsets.only(top: 17.0,),
          //         width: width*0.93,
          //         height: height*0.053,
          //         child: TextFormField(
          //           cursorColor: Color.fromRGBO(100,100,100,1),
          //           decoration: InputDecoration(
          //             contentPadding: EdgeInsets.only(left: 17.0,top:10.0,),
          //             focusedBorder: OutlineInputBorder(
          //               borderSide: BorderSide(color: Color.fromRGBO(0, 173, 25, 1), width: 1.2),
          //             ),
          //             enabledBorder: OutlineInputBorder(
          //               borderSide: BorderSide(color: Color.fromRGBO(100,100,100,1), width: 1.2),
          //             ),
          //             hintText: 'Email',
          //           ),
          //           validator: (value) {
          //             if (value!.isEmpty) {
          //               return 'Please enter some text';
          //             }
          //             return null;
          //           },
          //         ),
          //       ),
          //
          //     ],
          //   ),
          // ),

           Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child:  ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ///snak bar to show the sms that the form will be submitted
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.green,
                        content: Center(
                          child: Text('Thank You So Much',style: TextStyle(
                            fontSize: 23.0,
                          ),
                          ),
                        ),
                      ),
                    );
                  }
                },
              )),
        ],
      ),
    );
  }
}
