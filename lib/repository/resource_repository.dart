import 'package:first/services/resource_service.dart';

import '../models/resource_model.dart';

class Resourcerepository{

  ResourceModel? resourceModel;
  Resourceservice? resourceservice = Resourceservice();


  Future<ResourceModel> setDataToResourceResource()

  async{

    resourceModel = await resourceservice!.getDataToResponseService();
    return resourceModel!;

  }

}