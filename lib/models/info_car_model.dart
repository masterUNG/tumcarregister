import 'dart:convert';

class InfoCarModel {
  final int? id;
  final String idRegister;
  final String province;
  final String car;
  final String color;
  final String model;
  InfoCarModel({
     this.id,
    required this.idRegister,
    required this.province,
    required this.car,
    required this.color,
    required this.model,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'idRegister': idRegister,
      'province': province,
      'car': car,
      'color': color,
      'model': model,
    };
  }

  factory InfoCarModel.fromMap(Map<String, dynamic> map) {
    return InfoCarModel(
      id: map['id']?.toInt() ?? 0,
      idRegister: map['idRegister'] ?? '',
      province: map['province'] ?? '',
      car: map['car'] ?? '',
      color: map['color'] ?? '',
      model: map['model'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory InfoCarModel.fromJson(String source) => InfoCarModel.fromMap(json.decode(source));
}
