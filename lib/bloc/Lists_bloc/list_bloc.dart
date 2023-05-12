import 'package:first/models/lists_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repository/lists_repository.dart';
import 'list_event.dart';
import 'list_state.dart';

class ListsBloc extends Bloc<ListEvent,ListState>{
  ListsModel? listsModel;
  ListRepository  listsRepository = ListRepository();

  ListsBloc():super(InitialState()){
    on<ListEvent>((event, emit ) async{
      if(event is SetDataToListsEvent)
        {
          emit(ListInProgressState());
          try{
            listsModel = (await listsRepository.setDatatoListsLists());
            emit(ListDataisLoadedState(listsModel: listsModel!));
          }
          catch(e)
      {
         emit(ListsErrorState('Something went wrong'));
      }
        }
    });
  }
}