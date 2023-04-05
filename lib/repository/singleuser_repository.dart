import '../models/singleuser_model.dart';
import '../services/singleuser_service.dart';

class SingleuserRepository{
  SingleUserModel? singleUserModel;
  SingleuserService? singleUserService = SingleuserService();


  Future<SingleUserModel> setDatatoSingleSingle()async{
    singleUserModel = await singleUserService!.getDataToSingleUserService();
    return singleUserModel!;
  }
}
