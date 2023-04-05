import 'package:first/models/lists_model.dart';
import '../services/lists_service.dart';
import '../services/lists_service.dart';

class ListRepository{

  ListsModel? listsModel;
  ListService? listService = ListService();


  Future<ListsModel> setDatatoListsLists()
  async{

    listsModel = await  listService!.getDataToListsService();
    return listsModel!;
  }
}

