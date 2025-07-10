import 'Items.dart';

class BookModel {
  BookModel({
      this.items,});

  BookModel.fromJson(dynamic json) {
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  List<Items>? items;
BookModel copyWith({  List<Items>? items,
}) => BookModel(  items: items ?? this.items,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}