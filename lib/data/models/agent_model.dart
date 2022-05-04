import 'package:json_annotation/json_annotation.dart';
import 'package:moni_africa/data/models/recent_loan_model.dart';
part 'agent_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Agent {
  final String id;
  final String userId;
  final dynamic moniId;
  final String eligibleLoanId;
  final String firstName;
  final String middleName;
  final String lastName;
  final String nickname;
  final DateTime birthDate;
  final String gender;
  final String businessName;
  final String maritalStatus;
  final String education;
  final String houseAddress;
  final String shopAddress;
  final String lga;
  final String city;
  final String state;
  final dynamic country;
  final String phoneNumber;
  final String emailAddress;
  final String bvn;
  final int hasCreditHistory;
  final int verified;
  final String referralLink;
  final String mediaUrl;
  final String channel;
  final int agentRepaymentRate;
  final int bvnVerifiedAfter;
  final int loanEnabled;
  final int statusId;
  final DateTime eligibleLoanModifiedAt;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final int capAgentLoan;
  final int loanCount;
  final RecentLoan recentLoan;
  final bool suspended;

  Agent({
  required this.id,
  required this.userId,
  this.moniId,
  required this.eligibleLoanId,
  required this.firstName,
  required this.middleName,
  required this.lastName,
  required this.nickname,
  required this.birthDate,
  required this.gender,
  required this.businessName,
  required this.maritalStatus,
  required this.education,
  required this.houseAddress,
  required this.shopAddress,
  required this.lga,
  required this.city,
  required this.state,
  this.country,
  required this.phoneNumber,
  required this.emailAddress,
  required this.bvn,
  required this.hasCreditHistory,
  required this.verified,
  required this.referralLink,
  required this.mediaUrl,
  required this.channel,
  required this.agentRepaymentRate,
  required this.bvnVerifiedAfter,
  required this.loanEnabled,
  required this.statusId,
  required this.eligibleLoanModifiedAt,
  required this.createdAt,
  required this.modifiedAt,
  required this.capAgentLoan,
  required this.loanCount,
  required this.recentLoan,
  required this.suspended,
});

  factory Agent.fromJson(Map<String, dynamic> data) => _$AgentFromJson(data);

  Map<String, dynamic> toJson() => _$AgentToJson(this);
}