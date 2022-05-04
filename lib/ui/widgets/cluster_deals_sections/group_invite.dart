import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moni_africa/utils/extensions.dart';

import '../../../utils/app_assets.dart';
import '../../../utils/colors.dart';
import '../../../utils/styles.dart';

Widget groupInvite (){
  return SizedBox(
    child: Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  child: SvgPicture.asset(AppAssets.chainsLink),
                ),
                SizedBox(width: 8.w,),
                Text("Group invite Link/Code", style: boldBlack14,),
              ],
            ),
            SizedBox(height: 8.h,),
            Text("Use the link or code below to invite new member", style: regularBlack13,),
            SizedBox(height: 16.h,),
            Text("Member invite code", style: regularBlack16,),
            SizedBox(height: 4.h,),
            Text("30DF38TG000", style: boldBlack14,),
          ],
        ),
        Positioned(
            top: 70,
            right: 0,
            child: InkWell(
              onTap: (){},
                child: Text("Get new code", style: regularOrange14,))
        )
      ],
    ),
  );
}