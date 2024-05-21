
import 'package:first/bloc/regsiter_bloc/register_bloc.dart';
import 'package:first/bloc/regsiter_bloc/regsiter_event.dart';
import 'package:first/bloc/regsiter_bloc/regsiter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {



  ///text editing controller for handle the text
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: [
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'TutorialKart',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                      ),
                    ),
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
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
                const SizedBox(
                  height: 20,
                ),
                ///apply loading state on elevated button
                BlocBuilder<RegisterBloc,RegisterState>(
                    builder: (context,state)
                    {
                      return Container(
                          height: 50,
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: ElevatedButton(
                            child: state is RegisterInProgressState ?
                            const CircularProgressIndicator(color: Colors.white,
                            )
                                : const Text('Login'),
                            onPressed: () {
                              BlocProvider.of<RegisterBloc>(context).add(
                                  SetDataToRegisterEvent(
                                      email: emailController.text,
                                      password: passwordController.text,
                                  ),
                              );
                            },
                          ));
                    }
                ),





                Row(
                  children: <Widget>[
                    const Text('Does not have account?'),
                    TextButton(
                      child: const Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {

                      },
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                ///Apply bloc on register screen
                SizedBox(
                  height: 50,
                ),
                BlocBuilder<RegisterBloc,RegisterState>(
                    builder: (context,state)
                    {
                      if(state is RegisterDataIsLoadedState)
                      {
                        return SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '${state.registerModel.id}',
                                  style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                  ),
                                ),
                                Text(
                                  state.registerModel.token,
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),
                              ],
                            ));
                      }
                      return Container();
                    }
                ),
              ],
            )),
      ),
    );
  }
}

