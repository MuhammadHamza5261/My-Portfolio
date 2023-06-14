import 'package:first/Secure_Storage/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:fluttersharedpreferences/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'example1.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyDashboard(),
    );
  }
}

class MyDashboard extends StatefulWidget {
  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {

   String username = '';
   String password = '';

  @override
  void initState() {
    initial();
    super.initState();

  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  void initial() async {

  username = await SharedPreferencesClient().getUserName();
   password = await SharedPreferencesClient().getPassword();


       setState(() {

       });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(0,178,25,1),
        title: const Text("Screen 2"),
      ),

      body:
      Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(
              child: Center(
                child: Text(
                 'UserName: $username',
                  style: const TextStyle(
                         fontSize: 25,
                         fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                       ),

            Container(
              child: Center(
                child: Text(
                'password: $password',
                  style: const TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20.0,
            ),

            Container(
              width: 300,
              height: 40,
               child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(0,178,25,1),
                ),
                onPressed: () async {

                  SharedPreferencesClient().removeValues();
                  await SharedPreferencesClient().setBoolValues(true);
                  // logindata.setBool('login', true);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MyLoginPage()));
                  },
                child: const Text('LogOut'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}