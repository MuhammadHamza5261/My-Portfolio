import 'package:first/bloc/Lists_bloc/list_state.dart';
import 'package:first/main.dart';
import 'package:first/models/lists_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/Lists_bloc/list_bloc.dart';
import '../../bloc/Lists_bloc/list_event.dart';
///stf
class ListScreen2 extends StatefulWidget {
  const ListScreen2({Key? key, required this.title}) : super(key: key);
  final String title;


  @override
  State<ListScreen2> createState() => _ListScreen2State();
}

class _ListScreen2State extends State<ListScreen2> {

  ///Search bar controller
  TextEditingController editingController = TextEditingController();

  @override
  void dispose() {
    editingController.dispose();
    super.dispose();
  }











  /// cal api on init method in flutter
  @override
  void initState() {
    ///call the bloc method on init state
    BlocProvider.of<ListsBloc>(context).add(SetDataToListsEvent());
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
          title: Text('Number of items show here'),
          automaticallyImplyLeading: false,

        ),
        body: BlocBuilder<ListsBloc,ListState>(
          builder: (context,state) {
                if(state is ListInProgressState){
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                else if(state is ListDataisLoadedState){

                  ListsModel listsModel = state.listsModel;

                  return Padding(
                    padding: EdgeInsets.all(8.0,),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: TextField(
                            onChanged: (value) {

                              },
                     controller: editingController,
                    decoration: InputDecoration(
                        labelText: "Search",
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25.0)))),
                  ),
            ),


                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Expanded(
                            child: ListView.builder(
                              itemCount: 4,
                              itemBuilder: (context,i) {
                                return Container(
                                  width: double.infinity,
                                   padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(8.0,),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Id : ${listsModel.data[i].id}',
                                        style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 23.0,
                                        fontWeight: FontWeight.w600,
                                      ),

                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Email: ${listsModel.data[i].email}',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 23.0,
                                        fontWeight: FontWeight.w600,
                                      ),

                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),

                                      Text('First Name: ${listsModel.data[i].firstName}',style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 23.0,
                                        fontWeight: FontWeight.w600,
                                      ),

                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),


                                      Text('Last Name: ${listsModel.data[i].lastName}',
                                        style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 23.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      ),
                                    ],
                                  ),
                                );
                              },

                            ),
                          ),
                        ),

                      ],
                    ),

                  );
                }
                return Container();
              }



        ),
      ),
    );
  }
}




