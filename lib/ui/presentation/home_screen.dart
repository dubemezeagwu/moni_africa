import 'package:flutter/material.dart';
import 'package:moni_africa/ui/presentation/cluster_details_page.dart';
import 'package:moni_africa/ui/presentation/members_page.dart';
import 'package:moni_africa/utils/app_assets.dart';
import 'package:moni_africa/utils/colors.dart';
import 'package:moni_africa/utils/extensions.dart';
import 'package:moni_africa/utils/size_config.dart';
import 'package:moni_africa/utils/strings.dart';
import 'package:moni_africa/utils/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.blackBackground,
        leading: InkWell(
            child: const Icon(Icons.arrow_back),
          onTap: (){},
        ),
        centerTitle: true,
        title: Text("My cluster",style: boldWhite16,),


      ),
      body: Column(
        children: [
          Container(
            height: 300.h,
            color: AppColors.blackBackground,
            child: Column(
              children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(MONI_DREAMBIG_COMMUNITY, style: boldWhite14,),
                            SizedBox(height: 4.h,),
                            Container(
                              decoration: const BoxDecoration(
                                color: AppColors.darkerTextColor,
                                borderRadius: BorderRadius.all(Radius.circular(100))
                              ),
                                child: Padding(
                                    padding: EdgeInsets.all(5),
                                child: RichText(
                                    text: TextSpan(
                                  text: "Repayment Rate: ",
                                      style: boldWhite14,
                                      children: [
                                        TextSpan(
                                          text: "60%", style: boldYellow14
                                        )
                                      ]
                                )))
                            ),
                            SizedBox(height: 4.h,),
                            Container(
                                decoration: const BoxDecoration(
                                    color: AppColors.darkerTextColor,
                                    borderRadius: BorderRadius.all(Radius.circular(100))
                                ),
                                child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: RichText(
                                        text: TextSpan(
                                            text: "Repayment Day: ",
                                            style: boldWhite14,
                                            children: [
                                              TextSpan(
                                                  text: "Every Sunday", style: boldGreen14
                                              )
                                            ]
                                        )))
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15.w),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(12.w)),
                          child: SizedBox(
                            height: 48,
                              width: 48,
                              child: Image.network(AppAssets.avatar)),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 36.h,
                  indent: 15.w,
                  thickness: 0.5.h,
                  endIndent: 15.w,
                  color: AppColors.grey,
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Cluster purse balance", style: regularWhite9,),
                            SizedBox(height: 4.h,),
                            Text(FIVE_FIFTY_MILLION, style: boldWhite16,),
                            SizedBox(height: 4.h,),
                            Text("+N550,000,000 interest today", style: regularLightGreen9,),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15.w),
                        child: RawMaterialButton(
                          elevation: 0,
                            onPressed: (){},
                          fillColor: AppColors.darkOrange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)
                          ),
                          child: Text(VIEW_PURSE, style: regularWhite12,),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 36.h,
                  indent: 15.w,
                  thickness: 0.5.h,
                  endIndent: 15.w,
                  color: AppColors.grey,
                ),
                SizedBox(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total interest earned", style: regularGrey14,),
                        Text("N550,000,000", style: regularYellow12,)
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 36.h,
                  indent: 15.w,
                  thickness: 0.5.h,
                  endIndent: 15.w,
                  color: AppColors.grey,
                ),
                SizedBox(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total owned by members", style: regularGrey14,),
                        Text("N550,000,000", style: regularWhite12,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          DefaultTabController(
              length: 2,
              child:Expanded(
                child:Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: AppColors.cream
                      ),
                      child: TabBar(
                        labelStyle: boldOrange14,
                        unselectedLabelStyle: regularBlack13,
                        labelColor: AppColors.darkOrange,
                        unselectedLabelColor: AppColors.textColor1,
                        indicatorColor: AppColors.darkOrange,
                        tabs: const [
                          Tab(text: "Members (9)",),
                          Tab(text: "Cluster Details",)
                        ],
                      ),
                    ),
                    const Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          MembersPage(),
                          ClusterDetailsPage()
                        ],),
                    )
                  ],
                ) ,
              )

              ,
          )
        ],
      ),
    );
  }
}

