import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moni_africa/utils/app_assets.dart';
import 'package:moni_africa/utils/colors.dart';
import 'package:moni_africa/utils/extensions.dart';
import 'package:moni_africa/utils/styles.dart';

class CustomLoanTileWidget extends StatelessWidget {
  final String? name, image, dueDate, price, loanStatus;
  final Color? color;
  final bool showDot;

  const CustomLoanTileWidget({
    Key? key,
    this.name,
    this.image,
    this.dueDate,
    this.price,
    this.loanStatus,
    this.showDot = true,
    this.color
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 72.h,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12.w)),
              child: SizedBox(
                  height: 48,
                  width: 48,
                  child: Image.network(AppAssets.avatar)
              ),
            ),
            SizedBox(width: 16.w,),
            Container(
              margin: EdgeInsets.only(top: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(name!, style: regularBlack13,),
                      SizedBox(width: 8.w,),
                      showDot ? Container(
                        width: 5,
                        height: 5,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.grey
                        ),
                      ) : Container(),
                      SizedBox(width: 8.w,),
                      Text(dueDate!, style: GoogleFonts.dmSans(
                        textStyle: TextStyle(
                            fontSize: 14.sp,
                            color: color ?? AppColors.textColor2,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h,),
                  Row(
                    children: [
                      Text(
                        "$price $loanStatus", style: GoogleFonts.dmSans(
                        textStyle: TextStyle(
                            fontSize: 14.sp,
                            color: color ?? AppColors.textColor2,
                            fontWeight: FontWeight.w400
                        ),
                      ),)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
  }
}
