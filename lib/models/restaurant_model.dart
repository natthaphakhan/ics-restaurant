import 'dart:convert';

List<DataModel> dataFromJson(String response) => List<DataModel>.from( // convert json data to list
    json.decode(response).map((x) => DataModel.fromJson(x)));

class DataModel {
  int? id;
  String? name;
  List<String>? categories;
  String? profileImageUrl;
  List<String>? images;
  List<OperationTime>? operationTime;
  String? address;
  double? rating;

  DataModel(
      {this.id,
      this.name,
      this.categories,
      this.profileImageUrl,
      this.images,
      this.operationTime,
      this.address,
      this.rating});

  DataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    categories = json['categories'].cast<String>();
    profileImageUrl = json['profile_image_url'];
    images = json['images'].cast<String>();
    if (json['operation_time'] != null) {
      operationTime = <OperationTime>[];
      json['operation_time'].forEach((v) {
        operationTime!.add(OperationTime.fromJson(v));
      });
    }
    address = json['address'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['categories'] = categories;
    data['profile_image_url'] = profileImageUrl;
    data['images'] = images;
    if (operationTime != null) {
      data['operation_time'] = operationTime!.map((v) => v.toJson()).toList();
    }
    data['address'] = address;
    data['rating'] = rating;
    return data;
  }
}

class OperationTime {
  String? day;
  String? timeOpen;
  String? timeClose;

  OperationTime({this.day, this.timeOpen, this.timeClose});

  OperationTime.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    timeOpen = json['time_open'];
    timeClose = json['time_close'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['day'] = day;
    data['time_open'] = timeOpen;
    data['time_close'] = timeClose;
    return data;
  }
}
