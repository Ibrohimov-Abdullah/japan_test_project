import 'dart:convert';

List<HospitalModel> hospitalModelFromJson(String str) => List<HospitalModel>.from(json.decode(str).map((x) => HospitalModel.fromJson(x)));

String hospitalModelToJson(List<HospitalModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HospitalModel {
  final String? hospitalName;
  final String? hospitalLocation;
  final List<String>? hospitalPhotos;
  final String? id;

  HospitalModel({
    this.hospitalName,
    this.hospitalLocation,
    this.hospitalPhotos,
    this.id,
  });

  HospitalModel copyWith({
    String? hospitalName,
    String? hospitalLocation,
    List<String>? hospitalPhotos,
    String? id,
  }) =>
      HospitalModel(
        hospitalName: hospitalName ?? this.hospitalName,
        hospitalLocation: hospitalLocation ?? this.hospitalLocation,
        hospitalPhotos: hospitalPhotos ?? this.hospitalPhotos,
        id: id ?? this.id,
      );

  factory HospitalModel.fromJson(Map<String, dynamic> json) => HospitalModel(
    hospitalName: json["hospitalName"],
    hospitalLocation: json["hospitalLocation"],
    hospitalPhotos: json["hospitalPhotos"] == null ? [] : List<String>.from(json["hospitalPhotos"]!.map((x) => x)),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "hospitalName": hospitalName,
    "hospitalLocation": hospitalLocation,
    "hospitalPhotos": hospitalPhotos == null ? [] : List<dynamic>.from(hospitalPhotos!.map((x) => x)),
    "id": id,
  };
}
