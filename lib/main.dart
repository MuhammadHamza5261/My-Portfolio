import 'package:first/api_constants.dart';
// import 'package:first/bloc/regsiter_bloc/login_bloc.dart';
import 'package:first/bloc/regsiter_bloc/register_bloc.dart';
import 'package:first/ui/First_task/Login_screen_task.dart';
import 'package:first/ui/Practise_screens/bottom_navbar.dart';
import 'package:first/ui/Practise_screens/carusol_slider.dart';
import 'package:first/ui/Practise_screens/constraintbox.dart';
import 'package:first/ui/Practise_screens/dialogbox.dart';
import 'package:first/ui/Practise_screens/formvalidation.dart';
import 'package:first/ui/Practise_screens/list_Tile.dart';
import 'package:first/ui/Practise_screens/splash_screen.dart';
import 'package:first/ui/Practise_screens/table.dart';
import 'package:first/ui/screens/Market_app/market_growth.dart';
import 'package:first/ui/screens/ResourceScreen.dart';
import 'package:first/ui/screens/design1.dart';
import 'package:first/ui/screens/exampledesign.dart';
import 'package:first/ui/screens/grid.dart';
import 'package:first/ui/screens/list_screen%202.dart';
import 'package:first/ui/screens/login_screen.dart';
import 'package:first/ui/screens/register_screen.dart';
import 'package:first/ui/screens/singleuser_screen.dart';
import 'package:first/ui/screens/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Secure_Storage/example1.dart';
// import 'Secure_Storage/securestorage_loginscreen.dart';
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
      theme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => SplashScreen(),
        'SignIn1' : (context) => Signin1(),
        'ListTile': (context) => ListtileScreen(),
        'SingleUserScreen':  (context) => Singleuserscreen(),
        'ResourceScreen': (context)  => ResourceScreen(),
         'ListScreen': (context) => ListScreen2(title: 'hamza',),
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

class MyNewScreen extends StatefulWidget {
  const MyNewScreen({Key? key}) : super(key: key);

  @override
  State<MyNewScreen> createState() => _MyNewScreenState();
}

class _MyNewScreenState extends State<MyNewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      color: Colors.blueAccent,
                      width: MediaQuery.of(context).size.width * 0.8,
                    ),
                    Container(
                      height: 200,
                      color: Colors.red,
                      width: MediaQuery.of(context).size.width * 0.2,
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}