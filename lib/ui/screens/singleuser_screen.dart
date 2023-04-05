import 'package:first/main.dart';
import 'package:first/models/singleuser_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/single_user/user_bloc.dart';
import '../../bloc/single_user/user_event.dart';
import '../../bloc/single_user/user_state.dart';
import '../../models/singleuser_model.dart';
import '../../models/singleuser_model.dart';
///stf
class Singleuserscreen extends StatefulWidget {
  const Singleuserscreen({Key? key}) : super(key: key);

  @override
  State<Singleuserscreen> createState() => _SingleuserscreenState();
}

class _SingleuserscreenState extends State<Singleuserscreen> {


  ///call api on initState
  @override
  void initState() {
    ///call the bloc method on init state
    BlocProvider.of<Singleuserbloc>(context).add(SetDataToUserEvent());
    super.initState();
  }











  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
         centerTitle: true,
          title: Text(
            'Display single user',
            style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.yellow,
            fontSize: 30.0,
          ),
          ),
        ),
        body: BlocBuilder<Singleuserbloc,UserState>(
          builder: (context,state){
            if(state is UserInProgressState){
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            else if(state is UserDataIsLoadedState){
              SingleUserModel userModel = state.userModel;
              return  Container(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      color: Colors.grey.shade400,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text('id:${userModel.data.id}',style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),),


                          Text('email:${userModel.data.email}',style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),),



                          Text('First name:${userModel.data.firstName}',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 22.0,
                            color: Colors.black,
                          ),),

                          Text('Last name: ${userModel.data.lastName} ',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 22.0,
                              color: Colors.black,
                            ),
                          ),


                          Text('Avatar:${userModel.data.avatar}',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 22.0,
                              color: Colors.black,
                            ),
                          ),



                        ],
                      ),

                    ),

                  ],
                ),
              );


          }


           return Container() ;
          }




        )
      ),
    );
  }
}






