import 'package:first/bloc/SingleResource_bloc/resource_bloc.dart';
import 'package:first/bloc/SingleResource_bloc/resource_event.dart';
import 'package:first/bloc/SingleResource_bloc/resource_state.dart';
import 'package:first/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/resource_model.dart';


class ResourceScreen extends StatefulWidget {
  const ResourceScreen({super.key});


  @override
  State<ResourceScreen> createState() => _ResourceScreenState();

}

class _ResourceScreenState extends State<ResourceScreen>{

  /// cal api on init method in flutter then they will run on when the app is start
   @override
   void initState() {
    ///call the bloc method on init state
    BlocProvider.of<Resourcebloc>(context).add(SetDataToResourceEvent());
    super.initState();
   }

  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {


    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;


    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle:true,
        title: const Text('Resource Screen'),
      ),

      body: BlocBuilder<Resourcebloc,Resourcestate>(
        builder: (context,state){
         return state is ResourceInProgressState ?
            const Center(
              child: CircularProgressIndicator(),
            ):
          state is ResourceDataIsLoadedState?
            Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: state.resourceModel.data.length,
                    itemBuilder: (context,i){
                      return  Column(
                        children: [
                          Text('Id: ${state.resourceModel.data[i].id}',style: const TextStyle(fontSize: 25.0,),),
                          const SizedBox(height: 10.0,),
                          Text('Name ${state.resourceModel.data[i].name}',style: const TextStyle(fontSize: 25.0,),),
                          const SizedBox(height: 10.0,),
                          Text('Year ${state.resourceModel.data[i].year}',style: const TextStyle(fontSize: 25.0,),),
                          const SizedBox(height: 10.0,),
                          Text('Color ${state.resourceModel.data[i].color}',style: const TextStyle(fontSize: 25.0,),),
                          const SizedBox(height: 10.0,),
                          Text('Pantone value ${state.resourceModel.data[i].pantoneValue}',style: const TextStyle(fontSize: 25.0,),),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ):SizedBox();
          }
    )
    );
  }
}
