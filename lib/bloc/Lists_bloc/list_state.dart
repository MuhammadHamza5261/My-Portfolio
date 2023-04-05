
import '../../models/lists_model.dart';


abstract class ListState{}

class InitialState  extends ListState{}

class ListInProgressState extends ListState{}

class ListDataisLoadedState extends ListState
{
    ListsModel listsModel ;
    ListDataisLoadedState({required this.listsModel});

}

class ListsErrorState extends ListState
{

    String error;
    ListsErrorState(this.error);


}

