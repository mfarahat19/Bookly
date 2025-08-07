// BookModel.dart
import 'VolumeInfo.dart';

class BookModel {
  VolumeInfo? volumeInfo;

  BookModel({this.volumeInfo});

  BookModel.fromJson(Map<String, dynamic> json) {
    volumeInfo = json['volumeInfo'] != null
        ? VolumeInfo.fromJson(json['volumeInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    return map;
  }
}
