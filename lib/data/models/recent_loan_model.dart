import 'package:json_annotation/json_annotation.dart';
import 'agent_loan_model.dart';
part 'recent_loan_model.g.dart';

@JsonSerializable(explicitToJson: true)
class RecentLoan {
  final String id;
  final String agentId;
  final String clusterId;
  final String agentLoanId;
  final int loanAmount;
  final DateTime createdAt;
  final AgentLoan agentLoan;

  RecentLoan({
      required this.id,
      required this.agentId,
      required this.clusterId,
      required this.agentLoanId,
      required this.loanAmount,
      required this.createdAt,
      required this.agentLoan
  });

  factory RecentLoan.fromJson(Map<String, dynamic> data) => _$RecentLoanFromJson(data);

  Map<String, dynamic> toJson() => _$RecentLoanToJson(this);
}