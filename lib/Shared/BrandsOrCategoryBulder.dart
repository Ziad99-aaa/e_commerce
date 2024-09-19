import 'package:e_commerce/Shared/CategoryOrBrandItem.dart';
import 'package:e_commerce/Api/model/Home/categoryOrBrand_response.dart';
import 'package:e_commerce/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Brandsorcategorybulder extends StatelessWidget {
  List<Data> categories;
  Brandsorcategorybulder({required this.categories});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      child: GridView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categoryorbranditem(list: categories[index]);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20.h),
      ),
    );
  }
}
