import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:macbro_app/models/category_model.dart';
import 'package:macbro_app/models/product_model.dart';
import 'package:macbro_app/ui/main/home/widgets/item_category_widget.dart';
import 'package:macbro_app/ui/main/home/widgets/item_offer_widget.dart';
import 'package:macbro_app/ui/main/home/widgets/item_widget.dart';
import 'package:macbro_app/ui/main/home/widgets/slider_widget.dart';
import 'package:macbro_app/models/slider_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final productList = [
    ProductModel(
        name: "Imac",
        price: "10 599 999",
        image: "imac.png",
        isFavourite: false,
        discount: 15),
    ProductModel(
        name: "Iphone",
        price: "8 3999 999",
        image: "iphone.png",
        isFavourite: false,
        discount: 25),
    ProductModel(
        name: "Imac",
        price: "10 599 999",
        image: "imac.png",
        isFavourite: false,
        discount: 15),
    ProductModel(
        name: "Iphone",
        price: "8 3999 999",
        image: "iphone.png",
        isFavourite: false,
        discount: 25),
    ProductModel(
        name: "Imac",
        price: "10 599 999",
        image: "imac.png",
        isFavourite: false,
        discount: 15),
    ProductModel(
        name: "Iphone",
        price: "8 3999 999",
        image: "iphone.png",
        isFavourite: false,
        discount: 25),
    ProductModel(
        name: "Imac",
        price: "10 599 999",
        image: "imac.png",
        isFavourite: false,
        discount: 15),
    ProductModel(
        name: "Iphone",
        price: "8 3999 999",
        image: "iphone.png",
        isFavourite: false,
        discount: 25),
  ];
  final categoryList = [
    CategoryModel(
      name: "Apple",
      image: "category_apple.png",
    ),
    CategoryModel(
      name: "Samsung",
      image: "category_samsung.png",
    ),
    CategoryModel(
      name: "Xiaomi",
      image: "category_xiaomi.png",
    ),
    CategoryModel(
      name: "Acoustics",
      image: "category_acoustics.png",
    ),
    CategoryModel(
      name: "Accessory",
      image: "category_accessory.png",
    ),
  ];
  final List<SliderModel> slidersList = [
    SliderModel("Взгляни на мир глазами Iphone", "Iphone 11 pro",
        "iphones.png"),
    SliderModel("Взгляни на мир глазами Iphone", "Iphone 12 pro",
        "iphones.png"),
    SliderModel("Взгляни на мир глазами Iphone", "Iphone 13 pro",
        "iphones.png"),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9FD),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h,),
                CarouselSlider.builder(
                    itemCount: slidersList.length,
                    itemBuilder: (context, index, realIndex) {
                      return SliderWidget(
                          sliderModel: slidersList[index], index: index);
                    },
                    options: CarouselOptions(
                        autoPlay: true,
                        height: 180.h,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeIndex = index;
                          });
                        })),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        "New",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Sf_Pro",
                            fontWeight: FontWeight.w700,
                            fontSize: 22.sp,
                            letterSpacing: 0.35.w),
                      ),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward))
                  ],
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    scrollDirection: Axis.horizontal,
                    itemCount: productList.length,
                    itemBuilder: (context, index) {
                      return ItemWidget(
                        name: productList[index].name,
                        image: productList[index].image,
                        price: productList[index].price,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        "Special offers",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Sf_Pro",
                            fontWeight: FontWeight.w700,
                            fontSize: 22.sp,
                            letterSpacing: 0.35.w),
                      ),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward))
                  ],
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productList.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    itemBuilder: (context, index) {
                      return ItemOfferWidget(
                        name: productList[index].name,
                        price: productList[index].price,
                        image: productList[index].image,
                        discount: productList[index].discount,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Sf_Pro",
                        fontWeight: FontWeight.w700,
                        fontSize: 22.sp,
                        letterSpacing: 0.35.w),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 24.h),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: categoryList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12.w,
                        mainAxisSpacing: 12.h),
                    itemBuilder: (context, index) {
                      return ItemCategoryWidget(
                        name: categoryList[index].name,
                        image: categoryList[index].image,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
