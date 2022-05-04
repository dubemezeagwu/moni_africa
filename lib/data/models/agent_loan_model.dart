import 'package:json_annotation/json_annotation.dart';
import 'package:moni_africa/data/models/status_model.dart';
part 'agent_loan_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AgentLoan {
  final String id;
  final String agentId;
  final String agentCreditScoreId;
  final String loanId;
  final String agentCardId;
  final String interestType;
  final double interestValue;
  final String loanDurationType;
  final int loanDuration;
  final DateTime loanDueDate;
  final int daysPastDue;
  final int loanAmount;
  final int loanAmountDue;
  final int loanInterestDue;
  final DateTime loanPaymentDate;
  final int loanPaymentRate;
  final int loanAmountPaid;
  final int penaltyOutstanding;
  final int penaltyPaid;
  final int principalPaid;
  final int principalOutstanding;
  final int interestPaid;
  final int interestOutstanding;
  final int penaltyAmount;
  final Status loanStatus;
  final int isMax;
  final int statusId;
  final int acceptTerms;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final Status status;

  AgentLoan({
  required this.id,
  required this.agentId,
  required this.agentCreditScoreId,
  required this.loanId,
  required this.agentCardId,
  required this.interestType,
  required this.interestValue,
  required this.loanDurationType,
  required this.loanDuration,
  required this.loanDueDate,
  required this.daysPastDue,
  required this.loanAmount,
  required this.loanAmountDue,
  required this.loanInterestDue,
  required this.loanPaymentDate,
  required this.loanPaymentRate,
  required this.loanAmountPaid,
  required this.penaltyOutstanding,
  required this.penaltyPaid,
  required this.principalPaid,
  required this.principalOutstanding,
  required this.interestPaid,
  required this.interestOutstanding,
  required this.penaltyAmount,
  required this.loanStatus,
  required this.isMax,
  required this.statusId,
  required this.acceptTerms,
  required this.createdAt,
  required this.modifiedAt,
  required this.status,
  });

  factory AgentLoan.fromJson(Map<String, dynamic> data) => _$AgentLoanFromJson(data);

  Map<String, dynamic> toJson() => _$AgentLoanToJson(this);
}