import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ohms/gen/assets.gen.dart';
import 'package:ohms/utils/colors/colors.dart';
import 'package:ohms/widgets/bars/searchbar.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              //searchbar
              AppSearchBar(
                searchController: _searchController,
                bgColor: AppColor.primaryColor,
                inputAreaColor: Colors.white,
                textColor: Colors.white,
              ),
              //delivery section
              Container(
                height: 320.h,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(color: Color(0xFFE8ECEF)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Card 1
                    Container(
                      height: 114.h,
                      width: 342.w,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Food Delivery",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Order from your favourite\n resturants and home chefs",
                                style: Theme.of(context).textTheme.bodySmall,
                              )
                            ],
                          ),
                          Image(
                            image: AssetImage(Assets.images.png.image8.path),
                            height: 98,
                            width: 115,
                          )
                        ],
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          height: 143.h,
                          width: 165.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Shops",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                "Everyday essentails",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 50.h,
                                  ),
                                  Image(
                                    image: AssetImage(
                                        Assets.images.png.image9.path),
                                    height: 76.h,
                                    width: 79.w,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 60.h,
                              width: 142.w,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Stack(
                                alignment: AlignmentDirectional.topStart,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Pick up",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                      Text(
                                        "Enjoy 30% off",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Image(
                                          image: AssetImage(
                                              Assets.images.png.image10.path)))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Container(
                              height: 60.h,
                              width: 142.w,
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Stack(
                                alignment: AlignmentDirectional.topStart,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Dine In",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                      Text(
                                        "Eat out and \nsave 75% off",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Image(
                                          image: AssetImage(
                                              Assets.images.png.image11.path)))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),

              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your daily deals",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),

                      //daily_deals
                      SizedBox(
                        height: 150.h,
                        width: 377.w,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(Assets
                                    .images.png.dailyDeals.rectangle12.path),
                                height: 168.h,
                                width: 134.w,
                              ),
                              SizedBox(
                                width: 5.h,
                              ),
                              Image(
                                image: AssetImage(Assets
                                    .images.png.dailyDeals.rectangle13.path),
                                height: 168.h,
                                width: 134.w,
                              ),
                              SizedBox(
                                width: 5.h,
                              ),
                              Image(
                                image: AssetImage(Assets
                                    .images.png.dailyDeals.rectangle12.path),
                                height: 168.h,
                                width: 134.w,
                              ),
                              SizedBox(
                                width: 5.h,
                              ),
                              Image(
                                image: AssetImage(Assets
                                    .images.png.dailyDeals.rectangle12.path),
                                height: 168.h,
                                width: 134.w,
                              ),
                              SizedBox(
                                width: 5.h,
                              ),
                              Image(
                                image: AssetImage(Assets
                                    .images.png.dailyDeals.rectangle13.path),
                                height: 168.h,
                                width: 134.w,
                              ),
                              SizedBox(
                                width: 5.h,
                              ),
                              Image(
                                image: AssetImage(Assets
                                    .images.png.dailyDeals.rectangle12.path),
                                height: 168.h,
                                width: 134.w,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      //Cuisines
                      Text(
                        "Cuisines",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(
                        height: 90.h,
                        width: 377.w,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(Assets
                                    .images.png.cuisines.rectangle12.path),
                                height: 87.h,
                                width: 119.w,
                              ),
                              SizedBox(
                                width: 5.h,
                              ),
                              Image(
                                image: AssetImage(Assets
                                    .images.png.cuisines.rectangle13.path),
                                height: 87.h,
                                width: 119.w,
                              ),
                              SizedBox(
                                width: 5.h,
                              ),
                              Image(
                                image: AssetImage(Assets
                                    .images.png.cuisines.rectangle12.path),
                                height: 87.h,
                                width: 119.w,
                              ),
                              SizedBox(
                                width: 5.h,
                              ),
                              Image(
                                image: AssetImage(Assets
                                    .images.png.cuisines.rectangle13.path),
                                height: 87.h,
                                width: 119.w,
                              ),
                              SizedBox(
                                width: 5.h,
                              ),
                              Image(
                                image: AssetImage(Assets
                                    .images.png.cuisines.rectangle12.path),
                                height: 87.h,
                                width: 119.w,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
