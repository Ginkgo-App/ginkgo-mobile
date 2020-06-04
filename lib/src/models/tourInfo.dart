part of 'models.dart';

class TourInfo {
  final int id;
  final String name;
  final List<MultiSizeImage> images;
  final User createBy;
  final Place startPlace;
  final Place destinatePlace;

  TourInfo({
    @required this.createBy,
    @required this.id,
    @required this.name,
    @required this.images,
    @required this.startPlace,
    @required this.destinatePlace,
  });
}
