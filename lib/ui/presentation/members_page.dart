import 'package:flutter/material.dart';
import 'package:moni_africa/ui/widgets/custom_loan_tile_widget.dart';
import 'package:moni_africa/utils/extensions.dart';
import 'package:moni_africa/utils/strings.dart';
import 'package:moni_africa/utils/styles.dart';

import '../../utils/colors.dart';
class MembersPage extends StatelessWidget {
  const MembersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: 50.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Overdue Loans", style: regularBlack13,),
                const Icon(Icons.remove)
              ],
            ),
          ),
          divider(),
          const CustomLoanTileWidget(
            name: "Florence Tanika",
            color: AppColors.red,
            dueDate: "3 days over due",
            price: TEN_MILLION,
            loanStatus: "Late loan",
          ),
          divider(),
          SizedBox(
            height: 50.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Due Today", style: regularBlack13,),
                const Icon(Icons.remove)
              ],
            ),
          ),
          divider(),
          const CustomLoanTileWidget(
            name: "Tiamiyu Adzan",
            color: AppColors.darkYellow,
            dueDate: "3 days over due",
            price: TEN_MILLION,
            loanStatus: "Late loan",
          ),
          divider(),
          const CustomLoanTileWidget(
            name: "Eze Tarka",
            color: AppColors.darkYellow,
            dueDate: "1 day over due",
            price: TEN_MILLION,
            loanStatus: "Late loan",
          ),
          divider(),
          SizedBox(
            height: 50.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Active Loans", style: regularBlack13,),
                const Icon(Icons.remove)
              ],
            ),
          ),
          divider(),
          const CustomLoanTileWidget(
            name: "Halima Yaya",
            color: AppColors.darkerGreen,
            dueDate: "2 days to due date",
            price: TEN_MILLION,
            loanStatus: "Active loan",
          ),
          divider(),
          const CustomLoanTileWidget(
            name: "Uche Ngozi",
            color: AppColors.darkerGreen,
            dueDate: "2 days to due date",
            price: TEN_MILLION,
            loanStatus: "Active loan",
          ),
          divider(),
          const CustomLoanTileWidget(
            name: "Anisa Lulu",
            color: AppColors.darkerGreen,
            dueDate: "2 days to due date",
            price: TEN_MILLION,
            loanStatus: "Active loan",
          ),
          divider(),
          SizedBox(
            height: 50.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Inactive Loans", style: regularBlack13,),
                const Icon(Icons.remove)
              ],
            ),
          ),
          divider(),
          const CustomLoanTileWidget(
            name: "Rebecca Funto",
            dueDate: "3 days over due",
            price: TEN_MILLION,
            loanStatus: "Late loan",
          ),
          divider(),
          const CustomLoanTileWidget(
            name: "Absko Gandhi",
            dueDate: "",
            price: TEN_MILLION,
            loanStatus: "Late loan",
            showDot: false,
          ),
          divider(),
          const CustomLoanTileWidget(
            name: "Mensa Robert",
            dueDate: "",
            price: TEN_MILLION,
            loanStatus: "Late loan",
            showDot: false,


          ),
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
