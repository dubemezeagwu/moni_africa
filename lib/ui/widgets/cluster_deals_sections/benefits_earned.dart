import 'package:flutter/material.dart';
import 'package:moni_africa/utils/extensions.dart';

import '../../../utils/colors.dart';
import '../../../utils/strings.dart';
import '../../../utils/styles.dart';

Widget benefitsEarned (){
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
                Text("Benefits earned", style: boldBlack14,),
              ],
            ),
            SizedBox(height: 16.h,),
            Text("Total CH benefits earned", style: regularBlack13,),
            SizedBox(height: 8.h,),
            Text(FIVE_FIFTY_MILLION, style: boldBlack14,),
            SizedBox(height: 16.h,),
            Text("Available benefits", style: regularBlack13,),
            SizedBox(height: 8.h,),
            Text(FIVE_FIFTY_MILLION, style: boldBlack14,),
            SizedBox(height: 8.h,),
            Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.darkOrange
                  ),
                ),
                SizedBox(width: 8.w,),
                Text("View earning history", style: regularOrange14,),
              ],
            ),
          ],
        ),
        Positioned(
            top: 100,
            right: 0,
            child: InkWell(
                onTap: (){},
                child: Text("+5000 today", style: regularGreen14,))
        )
      ],
    ),
  );
}