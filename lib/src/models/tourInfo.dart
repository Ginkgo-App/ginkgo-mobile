part of 'models.dart';

class TourInfo with Mappable {
  int id;
  String name;
  List<MultiSizeImage> images;
  User createBy;
  Place startPlace;
  Place destinatePlace;
  double rating;

  TourInfo({
    this.createBy,
    this.id,
    this.name,
    this.images,
    this.startPlace,
    this.destinatePlace,
    this.rating,
  });

  @override
  void mapping(Mapper map) {
    map('Id', id, (v) => id = v);
    map('Name', name, (v) => name = v);
    map<MultiSizeImage>(
        'Images', images, (v) => images = v, MultiSizeImageTransform());
    map('StartPlace', startPlace,
        (v) => startPlace = Mapper.fromJson(v).toObject());
    map('DestinatePlace', destinatePlace,
        (v) => destinatePlace = Mapper.fromJson(v).toObject());
    map('Rating', rating, (v) => rating = v);
  }
}

class TourInfoToPost {
  final Place startPlace;
  final Place destinatePlace;
  final List<File> images;
  final String name;

  TourInfoToPost({
    @required this.startPlace,
    @required this.destinatePlace,
    @required this.images,
    @required this.name,
  });
}
