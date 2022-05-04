import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moni_africa/utils/extensions.dart';
import 'package:moni_africa/utils/strings.dart';

import '../../../utils/app_assets.dart';
import '../../../utils/colors.dart';
import '../../../utils/styles.dart';

Widget groupSettings (){
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
                  child: SvgPicture.asset(AppAssets.settingsIcon),
                ),
                SizedBox(width: 8.w,),
                Text("Group Settings", style: boldBlack14,),
              ],
            ),
            SizedBox(height: 16.h,),
            Text("Group rules", style: regularBlack13,),
            SizedBox(height: 8.h,),
            Text(GROUP_RULES_ONE, style: regularBlack13,),
            Text(GROUP_RULES_TWO, style: regularBlack13,),
            SizedBox(height: 16.h,),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Text("Group Whatsapp", style: regularBlack13,),
            ),
            SizedBox(height: 8.h,),
            Text(WHATSAPP_LINK, style: regularGreen14,),
            SizedBox(height: 16.h,),
            Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  child: SvgPicture.asset(AppAssets.penIcon),
                ),
                SizedBox(width: 8.w,),
                Text("Edit Settings", style: regularOrange14,),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}