import 'package:json_annotation/json_annotation.dart';
import 'package:moni_africa/data/models/data_model.dart';
part 'welcome_model.g.dart';

@JsonSerializable()
class Welcome {
  final bool success;
  final String message;
  final Data data;

  Welcome({required this.success, required this.message, required this.data});

  factory Welcome.fromJson(Map<String, dynamic> data) => _$WelcomeFromJson(data);

  Map<String, dynamic> toJson() => _$WelcomeToJson(this);
}