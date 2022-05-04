import 'package:json_annotation/json_annotation.dart';

import 'active_agent_model.dart';
part 'data_model.g.dart';

@JsonSerializable()
class Data {
  final int clusterPurseBalance;
  final int totalInterestEarned;
  final int totalOwedByMembers;
  final List<dynamic> overdueAgents;
  final String clusterName;
  final double clusterRepaymentRate;
  final String clusterRepaymentDay;
  final List<dynamic> dueAgents;
  final List<ActiveAgent> activeAgents;
  final List<ActiveAgent> inactiveAgents;

  Data({
    required this.clusterPurseBalance,
    required this.totalInterestEarned,
    required this.totalOwedByMembers,
    required this.overdueAgents,
    required this.clusterName,
    required this.clusterRepaymentRate,
    required this.clusterRepaymentDay,
    required this.dueAgents,
    required this.activeAgents,
    required this.inactiveAgents
  });

  factory Data.fromJson(Map<String, dynamic> data) => _$DataFromJson(data);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}