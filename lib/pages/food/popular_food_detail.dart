import 'package:flutter/material.dart';
import 'package:food_delivery/widget/app_column.dart';
import 'package:food_delivery/widget/app_icon.dart';
import 'package:food_delivery/widget/big_text.dart';
import 'package:food_delivery/widget/expendable_text_widget.dart';

import '../../utils/colors.dart';
import '../../utils/dimension.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimension.getSize(350),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/food0.png"))),
              )),
          Positioned(
              top: Dimension.getSize(60),
              left: Dimension.getWidthSize(20),
              right: Dimension.getWidthSize(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],
              )),
          Positioned(
              left: 0,
              right: 0,
              top: Dimension.getSize(350) - Dimension.getSize(20),
              child: Container(
                padding: EdgeInsets.only(
                    left: Dimension.getSize(20),
                    right: Dimension.getSize(20),
                    top: Dimension.getSize(20)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimension.getSize(20)),
                        topRight: Radius.circular(Dimension.getSize(20))),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(
                      text: "Chinesse Side",
                      size: Dimension.getSize(26),
                    ),
                    SizedBox(
                      height: Dimension.getSize(20),
                    ),
                    BigText(text: "Introduce"),
                    const SizedBox(
                      child: SingleChildScrollView(
                        child: ExpandableTextWidget(text: "Lorem ipsum odor amet, consectetuer adipiscing elit. Commodo ad ante scelerisque nisl id ullamcorper. Commodo malesuada molestie sollicitudin vitae neque consectetur mus ullamcorper. Blandit ex proin penatibus fermentum; congue porttitor scelerisque sociosqu leo. Gravida maecenas accumsan pretium id non risus hendrerit leo. Congue accumsan nisi in potenti senectus. Platea consequat tempor duis cubilia potenti scelerisque vitae tortor quis. Felis pretium diam risus maecenas venenatis nullam felis eros. Cubilia himenaeos nam nibh orci class est. Mattis convallis sociosqu bibendum adipiscing ante tempus purus auctor. Tellus class feugiat ullamcorper urna vehicula primis aliquam. Quam accumsan sapien scelerisque leo a. Dui dapibus accumsan lobortis congue fermentum id sapien. Aenean euismod convallis habitasse nostra primis vitae imperdiet. Dictum mus placerat sollicitudin fringilla accumsan dignissim. Nibh fusce sed integer semper rhoncus. Parturient cras netus lobortis et odio consequat conubia."))
                        ,
                      ),
                    ],
                ),
              ))
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimension.getSize(120),
        padding: EdgeInsets.only(
            top: Dimension.getSize(30),
            bottom: Dimension.getSize(30),
            left: Dimension.getSize(20),
            right: Dimension.getSize(20)),
        decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimension.getSize(20) * 2),
                topRight: Radius.circular(Dimension.getSize(20) * 2))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimension.getSize(15),
                  bottom: Dimension.getSize(15),
                  right: Dimension.getSize(15),
                  left: Dimension.getSize(15)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.getSize(20)),
                  color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(width: Dimension.getWidthSize(5),),
                  BigText(text: "0"),
                  SizedBox(width: Dimension.getWidthSize(5),),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimension.getSize(15),
                  bottom: Dimension.getSize(15),
                  left: Dimension.getSize(15),
                  right: Dimension.getSize(15)),
              child: BigText(text: "\$ 10 | Add to card", color: Colors.white),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.getSize(20)),
                color: AppColors.mainColor
              ),
            )
          ],
        ),
      ),
    );
  }
}
