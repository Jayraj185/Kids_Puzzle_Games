class HomeModel
{
  String? image,key;
  bool? isAccept;

  HomeModel({this.image, this.key, this.isAccept});
}
class HomeModel2
{
  List<HomeModel>? DraggebleList,DragTargetList;

  HomeModel2({this.DraggebleList, this.DragTargetList});
}
