
import 'package:e_commerce/Shared/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget CustombottomBar({required int selectedIndex,required Function(int) onTapFunc,required BuildContext context}) {
  return ClipRRect(
    borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r),topRight: Radius.circular(20.r)),
    child: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.primarycolor,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: selectedIndex,
        onTap: onTapFunc,
        items: [
          BottomNavigationBarItem(
            icon: CircleAvatar(
              foregroundColor: selectedIndex==0?AppColor.primarycolor:AppColor.whitecolor,
              backgroundColor: selectedIndex==0?AppColor.whitecolor:Colors.transparent,
              radius: 25.r,
              child: Icon(
                Icons.home_outlined,
                size: 35.sp,
              ),
            ),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              foregroundColor: selectedIndex==1?AppColor.primarycolor:AppColor.whitecolor,
              backgroundColor: selectedIndex==1?AppColor.whitecolor:Colors.transparent,
              radius: 25.r,
              child: Icon(
                Icons.category_outlined,
                size: 35.sp,
              ),
            ),
            label: 'CATEGORY',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              foregroundColor: selectedIndex==2?AppColor.primarycolor:AppColor.whitecolor,
              backgroundColor: selectedIndex==2?AppColor.whitecolor:Colors.transparent,
              radius: 25.r,
              child: Icon(
                Icons.favorite_border_outlined,
                size: 35.sp,
              ),
            ),
            label: 'FAV',
          ),

          BottomNavigationBarItem(
            icon: CircleAvatar(
              foregroundColor: selectedIndex==3?AppColor.primarycolor:AppColor.whitecolor,
              backgroundColor: selectedIndex==3?AppColor.whitecolor:Colors.transparent,
              radius: 25.r,
              child: Icon(
                Icons.person_outline,
                size: 35.sp,
              ),
            ),
            label: 'PROFILE',
          ),
        ],
      ),
  );
}
