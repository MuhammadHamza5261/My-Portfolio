import 'package:first/bloc/SingleResource_bloc/resource_event.dart';
import 'package:first/bloc/SingleResource_bloc/resource_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/resource_model.dart';
import '../../repository/resource_repository.dart';

class Resourcebloc extends Bloc <Resourceevent,Resourcestate>{
   ResourceModel? resourceModel;
   Resourcerepository resourcerepository = Resourcerepository();


   Resourcebloc():super(InitialState()){
      on<Resourceevent>((event , emit) async{
         if(event is SetDataToResourceEvent)
    {
       emit(ResourceInProgressState());
       try{
          resourceModel = (await resourcerepository.setDataToResourceResource());
          emit(ResourceDataIsLoadedState(resourceModel: resourceModel!));
       }
       catch(e){
          emit(ResourceErrorState('Something went wrong'));
    }
   }
});
}

}