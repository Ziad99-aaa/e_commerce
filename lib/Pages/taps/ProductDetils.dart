import 'package:e_commerce/Api/model/ProductPage/product_responce.dart';
import 'package:e_commerce/Shared/Text_Theme.dart';
import 'package:e_commerce/Shared/app_color.dart';
import 'package:e_commerce/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsPage extends StatelessWidget {
  static const String roteName = "ProductDetailsPage";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            // Product Image
            ClipRRect(
              borderRadius: BorderRadius.circular(30.r),
              child: ImageSlideshow(
                /// Width of the [ImageSlideshow].
                width: double.infinity,

                /// Height of the [ImageSlideshow].
                height: 300.h,

                /// The page to show when first creating the [ImageSlideshow].
                initialPage: 0,

                /// The color to paint the indicator.
                indicatorColor: AppColor.primarycolor,

                /// The color to paint behind th indicator.
                indicatorBackgroundColor: Colors.grey,

                /// The widgets to display in the [ImageSlideshow].
                /// Add the sample image file into the images folder
                children: [
                  Image.asset(
                    'assets/sale3.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/sale2.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/sale3.png',
                    fit: BoxFit.cover,
                  ),
                ],

                /// Called whenever the page in the center of the viewport changes.
                

                /// Auto scroll interval.
                /// Do not auto scroll with null or 0.
                autoPlayInterval: 3000,

                /// Loops back to first slide.
                isLoop: true,
              ),
            ),
            SizedBox(height: 16),
            // Product Name
            Text(
              'Nike Air Jordon',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            // Rating and Sold Count
            Row(
              children: [
                Text('3,230 Sold', style: TextStyle(fontSize: 16)),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 20),
                    SizedBox(width: 4),
                    Text('4.8 (7,500)', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Description',
              style:
                  TextThemee.bodymidBlack.copyWith(fontWeight: FontWeight.bold),
            ),
            // Product Description
            ReadMoreText(
              'Nike is a multinational corporation that designs, bbbbbbbbbbbbbbbbbbbbdevelops, and sells athletic footwear, apparel, and accessories...',
              trimMode: TrimMode.Line,
              trimLines: 2,
              colorClickableText: Colors.pink,
              trimCollapsedText: 'Show more',
              trimExpandedText: 'Show less',
              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            // Text(
            //   'Nike is a multinational corporation that designs, develops, and sells athletic footwear, apparel, and accessories...',
            //   style: TextStyle(fontSize: 16),
            // ),
            // TextButton(
            //   onPressed: () {
            //     // Show more description
            //   },
            //   child: Text('Read More'),
            // ),
            SizedBox(height: 16),
            // Size Selector

            SizedBox(height: 16),
            // Color Selector

            SizedBox(height: 16),
            // Total Price and Add to Cart
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Total price',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'EGP 3,500',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  width: 25.w,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle add to cart
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      backgroundColor: AppColor.primarycolor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.shopify,
                          size: 25,
                          color: AppColor.whitecolor,
                        ),
                        Text('Add to cart', style: TextThemee.bodymidWhite),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
