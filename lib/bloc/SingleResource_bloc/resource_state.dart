import 'package:first/models/resource_model.dart';

abstract class  Resourcestate{}

class InitialState extends Resourcestate{}

class ResourceInProgressState extends Resourcestate{}

class ResourceDataIsLoadedState extends Resourcestate{

  ResourceModel resourceModel;
  ResourceDataIsLoadedState({required this.resourceModel});

}
class ResourceErrorState extends Resourcestate{
  String error;
  ResourceErrorState(this.error);
}