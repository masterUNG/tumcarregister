import 'dart:convert';

class ServiceCarModel {
  final int? id;
  final String idInfoCar;
  final String service;
  final String start;
  final String end;
  final String status;
  ServiceCarModel({
     this.id,
    required this.idInfoCar,
    required this.service,
    required this.start,
    required this.end,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'idInfoCar': idInfoCar,
      'service': service,
      'start': start,
      'end': end,
      'status': status,
    };
  }

  factory ServiceCarModel.fromMap(Map<String, dynamic> map) {
    return ServiceCarModel(
      id: map['id']?.toInt() ?? 0,
      idInfoCar: map['idInfoCar'] ?? '',
      service: map['service'] ?? '',
      start: map['start'] ?? '',
      end: map['end'] ?? '',
      status: map['status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ServiceCarModel.fromJson(String source) => ServiceCarModel.fromMap(json.decode(source));
}
