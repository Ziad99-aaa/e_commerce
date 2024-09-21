import 'package:e_commerce/Api/model/ProductPage/ProductCard.dart';
import 'package:e_commerce/Api/model/ProductPage/product_responce.dart';
import 'package:e_commerce/Pages/taps/ProductDetils.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Productbulder extends StatelessWidget {
  List<Dataa> products;
  Productbulder({required this.products});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      child: GridView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, ProductDetailsPage.roteName,
                  arguments: products[index]);
            },
            child: ProductCard(
              product: products[index],
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 4 / 7.5,
            crossAxisCount: 2,
            mainAxisSpacing: 20.h,
            crossAxisSpacing: 20.h),
      ),
    );
  }
}
