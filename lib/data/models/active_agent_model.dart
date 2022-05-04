import 'package:json_annotation/json_annotation.dart';
import 'agent_model.dart';
part 'active_agent_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ActiveAgent{
  final String id;
  final String userId;
  final String agentId;
  final String clusterId;
  final int statusId;
  final DateTime acceptedAt;
  final DateTime createdAt;
  final Agent agent;

  ActiveAgent({
    required this.id,
    required this.userId,
    required this.agentId,
    required this.clusterId,
    required this.statusId,
    required this.acceptedAt,
    required this.createdAt,
    required this.agent,
  });

  factory ActiveAgent.fromJson(Map<String, dynamic> data) => _$ActiveAgentFromJson(data);

  Map<String, dynamic> toJson() => _$ActiveAgentToJson(this);
}