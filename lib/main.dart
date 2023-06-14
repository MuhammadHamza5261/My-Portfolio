import 'package:first/bloc/regsiter_bloc/register_bloc.dart';
import 'package:first/ui/First_task/Login_screen_task.dart';
import 'package:first/ui/Practise_screens/list_Tile.dart';
import 'package:first/ui/Practise_screens/splash_screen.dart';
import 'package:first/ui/screens/ResourceScreen.dart';
import 'package:first/ui/screens/list_screen%202.dart';
import 'package:first/ui/screens/register_screen.dart';
import 'package:first/ui/screens/singleuser_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Secure_Storage/example1.dart';
import 'bloc/Lists_bloc/list_bloc.dart';
import 'bloc/SingleResource_bloc/resource_bloc.dart';
import 'bloc/login_bloc/login_bloc.dart';
import 'bloc/logintask_bloc/logintask_bloc.dart';
import 'bloc/single_user/user_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
        providers: [
          BlocProvider<RegisterBloc>(create: (context) => RegisterBloc()),
          BlocProvider<LoginBloc>(create: (context) => LoginBloc()),
          BlocProvider<ListsBloc>(create: (context) => ListsBloc()),
          BlocProvider<Singleuserbloc>(create: (context) => Singleuserbloc()),
          BlocProvider<Logintask_Bloc>(create: (context) =>  Logintask_Bloc()),
          BlocProvider<Resourcebloc>(create: (context) =>  Resourcebloc()),
        ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => SplashScreen(),
        'SignIn1' : (context) => const Signin1(),
        'ListTile': (context) => const ListtileScreen(),
        'SingleUserScreen':  (context) => const Singleuserscreen(),
        'ResourceScreen': (context)  => const ResourceScreen(),
         'ListScreen': (context) => const ListScreen2(title: 'hamza',),
        //when navigating to the "/second" route, build the SecondScreen widget.
        'RegsiterScreen': (context) => const RegisterScreen(),
        // 'Resourceloginscreen': (context) => const HomePage(),
        'Securestorage': (context) => MyAppsecurestorage(),
      },
      //home: SplashScreen(),
      //home: MyNewScreen(),
    );
  }
}
