import 'package:first/Secure_Storage/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'secure_storage_screen2.dart';

class MyAppsecurestorage extends StatefulWidget {

  @override
  State<MyAppsecurestorage> createState() => _MyAppsecurestorageState();
}

class _MyAppsecurestorageState extends State<MyAppsecurestorage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyLoginPage(),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {

  late double height;
  late double width;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _FormKey = GlobalKey<FormState>();

  late SharedPreferences loginData;
  late bool newUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkIfAlreadyLogin();
  }

  void checkIfAlreadyLogin() async {

    loginData = await SharedPreferences.getInstance();
    SharedPreferencesClient().getBoolName();
    // newUser = (loginData.getBool('login') ?? true);

    print(newUser);
    if (newUser == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyDashboard()));
    }
  }

  @override
  void dispose() {

    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 178, 25, 1),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Secure Storage"),
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                 "Login Form",
                 style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),

              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'username',
                    ),

                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your name';
                      } else if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                        return 'Please enter a valid name';
                      }
                      return null;
                    },
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a min 6 digit password";
                    }
                    if (value.length >= 6) {
                      return "Password must be at least 6 characters long";
                    }
                    return null;
                  },
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width *0.8,
                height: MediaQuery.of(context).size.height *0.06,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(0, 178, 25, 1),
                  ),

                    onPressed: () async {

                      if (_formKey.currentState!.validate()) {

                        String username = usernameController.text;
                        String password = passwordController.text;

                        if (username != '' && password != '') {
                          print('Successfully');

                          loginData.setBool('login', false);

                      }

                     await SharedPreferencesClient().setCredential(username,password);

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyDashboard()));
                    }
                  },

                  child: const Text("Log-In"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}