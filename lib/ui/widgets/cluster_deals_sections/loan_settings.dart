import 'package:flutter/material.dart';
import 'package:moni_africa/utils/extensions.dart';
import 'package:moni_africa/utils/strings.dart';

import '../../../utils/colors.dart';
import '../../../utils/styles.dart';

Widget loanSettings (){
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
                Text("Loan setting", style: boldBlack14,),
              ],
            ),
            SizedBox(height: 16.h,),
            Text("Total loan collected by cluster", style: regularBlack13,),
            SizedBox(height: 8.h,),
            Text(FIVE_FIFTY_MILLION, style: regularBlack16,),
            SizedBox(height: 16.h,),
            Text("Repayment Day", style: regularBlack13,),
            SizedBox(height: 8.h,),
            Text("Every Monday", style: boldBlack14,),
          ],
        ),
        Positioned(
            top: 100,
            right: 0,
            child: InkWell(
                onTap: (){},
                child: Text("Change", style: regularOrange14,))
        )
      ],
    ),
  );
}