import 'package:json_annotation/json_annotation.dart';
part 'status_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Status {
  final int id;
  final String name;
  final String label;
  final String description;
  final DateTime createdAt;
  final DateTime modifiedAt;

  Status({
    required this.id,
    required this.name,
    required this.label,
    required this.description,
    required this.createdAt,
    required this.modifiedAt
  });

  factory Status.fromJson(Map<String, dynamic> data) => _$StatusFromJson(data);

  Map<String, dynamic> toJson() => _$StatusToJson(this);
}