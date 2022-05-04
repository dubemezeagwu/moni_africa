import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moni_africa/utils/app_assets.dart';
import 'package:moni_africa/utils/extensions.dart';
import 'package:moni_africa/utils/styles.dart';

import '../../../utils/colors.dart';

Widget clusterPurseSettings(){
  return SizedBox(
    child: Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 16,
                  height: 16,
                  child: SvgPicture.asset(AppAssets.nairaBadge),
                ),
                SizedBox(width: 8.w,),
                Text("Cluster purse setting", style: boldBlack14,),
              ],
            ),
            SizedBox(height: 16.h,),
            Text("Frequency of contribution", style: regularBlack13,),
            SizedBox(height: 4.h,),
            Text("Monthly upfront", style: regularBlack16,),
            SizedBox(height: 8.h,),
            Text("N550,000,000", style: boldBlack14,),
            SizedBox(height: 8.h,),
            Text("Your contribution is 8% of your eligible amount ", style: regularGrey14,),
          ],
        ),
        Positioned(
          top: 50,
            right: 0,
            child: InkWell(
              onTap: (){},
                child: Text("Change", style: regularOrange14,))
        )
      ],
    ),
  );
}