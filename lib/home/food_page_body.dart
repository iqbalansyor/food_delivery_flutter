import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widget/big_text.dart';
import 'package:food_delivery/widget/icon_and_text_widget.dart';
import 'package:food_delivery/widget/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  var _scaleFactor = 0.8;
  double height = 220;

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      setState(() {
        if (pageController.page != null) {
          _currPageValue = pageController.page!;
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: Colors.red,
          height: 320,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeColor: AppColors.mainColor,
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
          ),
        )
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = height * (1 - currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(1, currTrans, 1);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale = _scaleFactor + (_currPageValue - index + 1)*(1 - _scaleFactor);
      var currTrans = height * (1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = height * (1 - currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, height * (1 - _scaleFactor)/2, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: height,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/food0.png"))),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 120,
                margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFe8e8e8,),
                      blurRadius: 5.0,
                      offset: Offset(0, 5)
                    ),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-5, 0)
                    ),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(5, 0)
                    )
                  ],
                  color: Colors.white,
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: "Chinesse Side",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(
                                5,
                                (index) => Icon(
                                      Icons.star,
                                      color: AppColors.mainColor,
                                      size: 15,
                                    )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SmallText(text: "4.5"),
                          SizedBox(
                            width: 10,
                          ),
                          SmallText(text: "1287"),
                          SizedBox(
                            width: 10,
                          ),
                          SmallText(text: "comments")
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconAndTextWidget(
                              icon: Icons.circle_sharp,
                              text: "Normal",
                              iconColor: AppColors.iconColor1),
                          IconAndTextWidget(
                              icon: Icons.location_on,
                              text: "1.7km",
                              iconColor: AppColors.mainColor),
                          IconAndTextWidget(
                              icon: Icons.access_time_filled_rounded,
                              text: "32min",
                              iconColor: AppColors.iconColor1)
                        ],
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
