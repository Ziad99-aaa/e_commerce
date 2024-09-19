import 'package:e_commerce/Shared/Text_Theme.dart';
import 'package:e_commerce/Shared/app_color.dart';
import 'package:flutter/material.dart';

class Rowsectionbulder extends StatelessWidget {

  String text;
  Rowsectionbulder({required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(text,style: TextThemee.bodymidBlack.copyWith(color: AppColor.primarycolor),),Text("view all",style: TextThemee.bodymidBlack.copyWith(color: AppColor.primarycolor))],
    );
  }
}
