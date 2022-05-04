import 'package:flutter/material.dart';
import 'package:moni_africa/ui/widgets/cluster_deals_sections/benefits_earned.dart';
import 'package:moni_africa/ui/widgets/cluster_deals_sections/cluster_purse_settings.dart';
import 'package:moni_africa/ui/widgets/cluster_deals_sections/group_invite.dart';
import 'package:moni_africa/ui/widgets/cluster_deals_sections/group_settings.dart';
import 'package:moni_africa/ui/widgets/cluster_deals_sections/loan_settings.dart';
import 'package:moni_africa/ui/widgets/cluster_deals_sections/pending_request.dart';
import 'package:moni_africa/utils/extensions.dart';

import '../../utils/colors.dart';
class ClusterDetailsPage extends StatelessWidget {
  const ClusterDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          clusterPurseSettings(),
          divider(),
          groupInvite(),
          divider(),
          loanSettings(),
          divider(),
          pendingRequest(),
          divider(),
          groupSettings(),
          divider(),
          benefitsEarned()
        ],
      ),
    );
  }
}

Widget divider (){
  return Divider(
    height: 30.h,
    thickness: 0.5.h,
    color: AppColors.grey,
  );
}
