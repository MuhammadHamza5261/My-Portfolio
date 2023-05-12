
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/login_bloc/login_bloc.dart';
import '../../bloc/login_bloc/login_event.dart';
import '../../bloc/login_bloc/login_state.dart';


///Stf
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView(
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                            fontSize: 20,
                        ),
                      )),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                    },
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10,0,10,0),
                    child: ElevatedButton(
                      child: Text('Login'),
                      onPressed: () {
                        BlocProvider.of<LoginBloc>(context).add(SetDataToLoginEvent(

                            email: nameController.text,
                            password: passwordController.text,

                        ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  BlocListener<LoginBloc,LoginState>(listener: (context,LoginState){

                  },
                    child:BlocBuilder<LoginBloc,LoginState>(
                      builder: (context,state)
                      {
                        if(state is LoginDataIsLoadedState)
                        {
                          return SizedBox(
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '${state.loginModel.token}',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ));
                        }
                        return Container();
                      }
                  ),)


                ],

              )),
      ),
    );
  }
}
