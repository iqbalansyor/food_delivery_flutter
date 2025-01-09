import 'package:flutter/material.dart';
import 'package:food_delivery/widget/app_icon.dart';
import 'package:food_delivery/widget/expendable_text_widget.dart';

import '../../utils/colors.dart';
import '../../utils/dimension.dart';
import '../../widget/big_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: Dimension.getSize(70),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(Dimension.getSize(20)),
                child: Container(
                  child: Center(
                      child: BigText(
                          text: "Chinesse Side", size: Dimension.getSize(26))),
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimension.getSize(20)),
                          topRight: Radius.circular(Dimension.getSize(20)))),
                )),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: Dimension.getSize(20), right: Dimension.getSize(20)),
                child: ExpandableTextWidget(
                    text:
                        "Lorem ipsum odor amet, consectetuer adipiscing elit. Commodo ad ante scelerisque nisl id ullamcorper. Commodo malesuada molestie sollicitudin vitae neque consectetur mus ullamcorper. Blandit ex proin penatibus fermentum; congue porttitor scelerisque sociosqu leo. Gravida maecenas accumsan pretium id non risus hendrerit leo. Congue accumsan nisi in potenti senectus. Platea consequat tempor duis cubilia potenti scelerisque vitae tortor quis. Felis pretium diam risus maecenas venenatis nullam felis eros. Cubilia himenaeos nam nibh orci class est. Mattis convallis sociosqu bibendum adipiscing ante tempus purus auctor. Tellus class feugiat ullamcorper urna vehicula primis aliquam. Quam accumsan sapien scelerisque leo a. Dui dapibus accumsan lobortis congue fermentum id sapien. Aenean euismod convallis habitasse nostra primis vitae imperdiet. Dictum mus placerat sollicitudin fringilla accumsan dignissim. Nibh fusce sed integer semper rhoncus. Parturient cras netus lobortis et odio consequat conubia Lorem ipsum odor amet, consectetuer adipiscing elit. Commodo ad ante scelerisque nisl id ullamcorper. Commodo malesuada molestie sollicitudin vitae neque consectetur mus ullamcorper. Blandit ex proin penatibus fermentum; congue porttitor scelerisque sociosqu leo. Gravida maecenas accumsan pretium id non risus hendrerit leo. Congue accumsan nisi in potenti senectus. Platea consequat tempor duis cubilia potenti scelerisque vitae tortor quis. Felis pretium diam risus maecenas venenatis nullam felis eros. Cubilia himenaeos nam nibh orci class est. Mattis convallis sociosqu bibendum adipiscing ante tempus purus auctor. Tellus class feugiat ullamcorper urna vehicula primis aliquam. Quam accumsan sapien scelerisque leo a. Dui dapibus accumsan lobortis congue fermentum id sapien. Aenean euismod convallis habitasse nostra primis vitae imperdiet. Dictum mus placerat sollicitudin fringilla accumsan dignissim. Nibh fusce sed integer semper rhoncus. Parturient cras netus lobortis et odio consequat conubia.. Lorem ipsum odor amet, consectetuer adipiscing elit. Commodo ad ante scelerisque nisl id ullamcorper. Commodo malesuada molestie sollicitudin vitae neque consectetur mus ullamcorper. Blandit ex proin penatibus fermentum; congue porttitor scelerisque sociosqu leo. Gravida maecenas accumsan pretium id non risus hendrerit leo. Congue accumsan nisi in potenti senectus. Platea consequat tempor duis cubilia potenti scelerisque vitae tortor quis. Felis pretium diam risus maecenas venenatis nullam felis eros. Cubilia himenaeos nam nibh orci class est. Mattis convallis sociosqu bibendum adipiscing ante tempus purus auctor. Tellus class feugiat ullamcorper urna vehicula primis aliquam. Quam accumsan sapien scelerisque leo a. Dui dapibus accumsan lobortis congue fermentum id sapien. Aenean euismod convallis habitasse nostra primis vitae imperdiet. Dictum mus placerat sollicitudin fringilla accumsan dignissim. Nibh fusce sed integer semper rhoncus. Parturient cras netus lobortis et odio consequat conubia. Lorem ipsum odor amet, consectetuer adipiscing elit. Commodo ad ante scelerisque nisl id ullamcorper. Commodo malesuada molestie sollicitudin vitae neque consectetur mus ullamcorper. Blandit ex proin penatibus fermentum; congue porttitor scelerisque sociosqu leo. Gravida maecenas accumsan pretium id non risus hendrerit leo. Congue accumsan nisi in potenti senectus. Platea consequat tempor duis cubilia potenti scelerisque vitae tortor quis. Felis pretium diam risus maecenas venenatis nullam felis eros. Cubilia himenaeos nam nibh orci class est. Mattis convallis sociosqu bibendum adipiscing ante tempus purus auctor. Tellus class feugiat ullamcorper urna vehicula primis aliquam. Quam accumsan sapien scelerisque leo a. Dui dapibus accumsan lobortis congue fermentum id sapien. Aenean euismod convallis habitasse nostra primis vitae imperdiet. Dictum mus placerat sollicitudin fringilla accumsan dignissim. Nibh fusce sed integer semper rhoncus. Parturient cras netus lobortis et odio consequat conubia Lorem ipsum odor amet, consectetuer adipiscing elit. Commodo ad ante scelerisque nisl id ullamcorper. Commodo malesuada molestie sollicitudin vitae neque consectetur mus ullamcorper. Blandit ex proin penatibus fermentum; congue porttitor scelerisque sociosqu leo. Gravida maecenas accumsan pretium id non risus hendrerit leo. Congue accumsan nisi in potenti senectus. Platea consequat tempor duis cubilia potenti scelerisque vitae tortor quis. Felis pretium diam risus maecenas venenatis nullam felis eros. Cubilia himenaeos nam nibh orci class est. Mattis convallis sociosqu bibendum adipiscing ante tempus purus auctor. Tellus class feugiat ullamcorper urna vehicula primis aliquam. Quam accumsan sapien scelerisque leo a. Dui dapibus accumsan lobortis congue fermentum id sapien. Aenean euismod convallis habitasse nostra primis vitae imperdiet. Dictum mus placerat sollicitudin fringilla accumsan dignissim. Nibh fusce sed integer semper rhoncus. Parturient cras netus lobortis et odio consequat conubia.. Lorem ipsum odor amet, consectetuer adipiscing elit. Commodo ad ante scelerisque nisl id ullamcorper. Commodo malesuada molestie sollicitudin vitae neque consectetur mus ullamcorper. Blandit ex proin penatibus fermentum; congue porttitor scelerisque sociosqu leo. Gravida maecenas accumsan pretium id non risus hendrerit leo. Congue accumsan nisi in potenti senectus. Platea consequat tempor duis cubilia potenti scelerisque vitae tortor quis. Felis pretium diam risus maecenas venenatis nullam felis eros. Cubilia himenaeos nam nibh orci class est. Mattis convallis sociosqu bibendum adipiscing ante tempus purus auctor. Tellus class feugiat ullamcorper urna vehicula primis aliquam. Quam accumsan sapien scelerisque leo a. Dui dapibus accumsan lobortis congue fermentum id sapien. Aenean euismod convallis habitasse nostra primis vitae imperdiet. Dictum mus placerat sollicitudin fringilla accumsan dignissim. Nibh fusce sed integer semper rhoncus. Parturient cras netus lobortis et odio consequat conubia."),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimension.getSize(50),
              right: Dimension.getSize(50),
              top: Dimension.getSize(10),
              bottom: Dimension.getSize(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimension.getSize(24),
                  icon: Icons.remove,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                ),
                BigText(text: "\$12.88 " " X " " 0", color: AppColors.mainBlackColor, size: Dimension.getSize(26),),
                AppIcon(
                  iconSize: Dimension.getSize(24),
                  icon: Icons.add,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                )
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite, color: AppColors.mainColor,
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
          )
        ],
      ),
    );
  }
}
