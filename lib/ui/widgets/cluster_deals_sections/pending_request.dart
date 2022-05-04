import 'package:flutter/material.dart';
import 'package:moni_africa/utils/extensions.dart';

import '../../../utils/colors.dart';
import '../../../utils/strings.dart';
import '../../../utils/styles.dart';

Widget pendingRequest (){
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
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.grey
                  ),
                ),
                SizedBox(width: 8.w,),
                Text("Pending Join Request", style: boldBlack14,),
              ],
            ),
            SizedBox(height: 16.h,),
            Text("No pending cluster join request", style: regularBlack13,),
          ],
        ),
      ],
    ),
  );
}