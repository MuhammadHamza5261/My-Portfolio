import 'dart:convert';
import 'package:first/bloc/logintask_bloc/logintask_event.dart';
import 'package:first/ui/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart';
import '../../bloc/login_bloc/login_bloc.dart';
import '../../bloc/login_bloc/login_event.dart';
import '../../bloc/login_bloc/login_state.dart';
import '../../bloc/logintask_bloc/logintask_bloc.dart';
import '../../bloc/logintask_bloc/logintask_state.dart';

class Signin1 extends StatelessWidget {
  const Signin1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0,173,25,1),
        centerTitle: true,
        title: const Text('Login Screen'),
      ),
      body: const signin1STF(),
    );
  }
}
///stf
class signin1STF extends StatefulWidget {
  const signin1STF({Key? key}) : super(key: key,);

  @override
  State<signin1STF> createState() => _signin1STFState();
}
class _signin1STFState extends State<signin1STF> {




  


  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController =  TextEditingController();

  final RegExp regExp = RegExp("[^a-zA-Z0-9@.]");


   late double width;
  late double height;

  bool _obscureText = true;


  final GlobalKey<FormState> _FormKey = GlobalKey<FormState>();
  final _formKey = GlobalKey<FormState>();

  get http => null;


  @override
  Widget build(BuildContext context) {
    // String token;


    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;


    var obscureText = true;


    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Form(
              key: _FormKey,
              child: Column(
                children: [
                  ///ICON
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(),
                          child: IconButton(
                            onPressed: (){
                              /// Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp()));
                            },
                            icon:const Icon( Icons.arrow_back_outlined,
                              size: 25.0,color: Color.fromRGBO(52,107,33,1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  /// Signin text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 23.0, left:15.0,),
                        child: const Text('Login In',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(20,20,20,1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  /// Horizontal lines row
                  Container(
                    margin: const  EdgeInsets.only(top: 20.0,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 19.0,),
                          width: width * 0.38,
                          child: const  Divider(
                            color: Color.fromRGBO(210,209,209,1),
                            height: 5,
                            thickness: 1,
                            indent: 1,
                            endIndent: 3,
                          ),
                        ),
                        Container(
                          child: const  Text('Or',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(100,100,100,1),
                            ),
                          ),
                        ),
                        Container(
                          margin: const  EdgeInsets.only(right:20.0,),
                          width: width*0.38,
                          child: const Divider(
                            color: Color.fromRGBO(210,209,209,1),
                            height: 5,
                            thickness: 1,
                            indent: 1,
                            endIndent: 3,
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///Email input field
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 17.0,),
                          width: width*0.93,
                          height: height*0.053,
                          child: TextFormField(
                            controller: _emailController,
                            cursorColor: const Color.fromRGBO(100,100,100,1),
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(left: 17.0,top:10.0,),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color.fromRGBO(0, 173, 25, 1), width: 1.2),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(100,100,100,1),
                                    width: 1.2,
                                ),
                              ),
                              hintText: 'Email',
                            ),
                            validator: (value) {
                              if(value == null || value.isEmpty || !value.contains('@') || !value.contains('.')){
                                return 'Please enter a correct email';
                              }
                              return null;
                            },
                             keyboardType: TextInputType.emailAddress,
                          ),

                        ),
                        ///password12
                        Container(
                          margin: const EdgeInsets.only(top: 17.0,),
                          width: width*0.93,
                          height: height*0.053,
                          child: TextFormField(
                            controller: _passwordController,
                            obscureText: _obscureText,
                            cursorColor: const Color.fromRGBO(100,100,100,1),
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 15.0,top:10.0,),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Color.fromRGBO(0,173,25,1), width: 1.2),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Color.fromRGBO(100,100,100,1), width: 1.2),
                                ),
                                hintText: 'Password',
                                suffixIcon:  GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  child: Icon(
                                    _obscureText ?
                                    Icons.visibility_off: Icons.visibility,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter a min 6 digit password";
                              }
                              if (value.length < 6) {
                                return "Password must be at least 6 characters long";
                              }
                              return null;
                            },

                          ),
                        ),
                      ],
                    ),
                  ),
                  ///forgot password
                  Container(
                    margin: EdgeInsets.only(right: 14.5,top: 10.0,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: (){
                            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => forgotpassword()));
                          },
                          child: Container(
                            child: Text('Forgot password?',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Color.fromRGBO(20,20,20,1),
                              ),

                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ///SIGN IN btn
                  const SizedBox(
                    height: 7.0,
                  ),
                  ///apply progress indicator in elevated button
                  BlocConsumer<Logintask_Bloc,LoginTaskState>(
                      builder: (context,state)
                      {
                        return Container(
                          margin: const EdgeInsets.only(),
                          width: MediaQuery.of(context).size.width*0.93,
                          height: MediaQuery.of(context).size.height*0.053,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(0,178,25,1),
                            ),
                              child: Center(
                                child: state is LoginTaskInProgressState ?
                                const CircularProgressIndicator(color: Colors.white,)
                                    : const Text('Sign in',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(255,255,255,1),
                                  ),
                                ),
                              ),
                            onPressed:() {
                              ///call the function that the user can correct email and password
                              if (_formKey.currentState!.validate()) {
                              }
                              ///call the in on pressed in flutter
                              BlocProvider.of<Logintask_Bloc>(context).add(SetDataToLoginTaskEvent(

                                email: _emailController.text,
                                password: _passwordController.text,

                              ));

                              if (_formKey.currentState!.validate()) {
                                String password = _passwordController.text;
                              }
                            },
                          ),
                        );
                      },
                    listener: (context,state)
                    {
                      if(state is LoginTaskDataIsLoadedState)
                      {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RegisterScreen()));
                      }
                        else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Color.fromRGBO(0,173,25,1),
                            content: Center(child: Text('Incorrect email or password'),
                            ),
                            duration: Duration(seconds: 5),
                          ),
                        );
                      }
                    },
                  ),
                  ///account text container
                  const SizedBox(
                    height: 16.0,
                  ),
                  const Center(
                    child: Text('Don\'t have an account?',
                      style: TextStyle(
                        color: Color.fromRGBO(20,20,20,1),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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




