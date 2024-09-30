import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ohms/gen/assets.gen.dart';
import 'package:ohms/utils/colors/colors.dart';
import 'package:ohms/widgets/bars/searchbar.dart';

@RoutePage()
class FoodsScreen extends StatefulWidget {
  const FoodsScreen({super.key});

  @override
  State<FoodsScreen> createState() => _FoodsScreenState();
}

class _FoodsScreenState extends State<FoodsScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSearchBar(
              searchController: searchController,
              bgColor: AppColor.bgColor,
              inputAreaColor: AppColor.lightGrey,
              textColor: AppColor.primaryColor,
              showBackButton: true,
            ),
            Container(
              height: 46.h,
              width: 390.h,
              padding:
                  const EdgeInsets.only(top: 8, right: 8, left: 20, bottom: 8),
              decoration: BoxDecoration(color: AppColor.primaryColor),
              child: Text(
                "Eat like a pro",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 173,
                width: 378,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage(
                            Assets.images.png.eatlikepro.rectangle12.path),
                        height: 173.h,
                        width: 134.w,
                      ),
                      SizedBox(
                        width: 3.h,
                      ),
                      Image(
                        image: AssetImage(
                            Assets.images.png.eatlikepro.rectangle13.path),
                        height: 173.h,
                        width: 134.w,
                      ),
                      SizedBox(
                        width: 3.h,
                      ),
                      Image(
                        image: AssetImage(
                            Assets.images.png.eatlikepro.rectangle12.path),
                        height: 173.h,
                        width: 134.w,
                      ),
                      SizedBox(
                        width: 3.h,
                      ),
                      Image(
                        image: AssetImage(
                            Assets.images.png.eatlikepro.rectangle13.path),
                        height: 173.h,
                        width: 134.w,
                      ),
                      SizedBox(
                        width: 3.h,
                      ),
                      Image(
                        image: AssetImage(
                            Assets.images.png.eatlikepro.rectangle12.path),
                        height: 173.h,
                        width: 134.w,
                      ),
                      SizedBox(
                        width: 3.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Image(
              image: AssetImage(Assets.images.png.rectangle28.path),
              height: 106.h,
              width: 396.h,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 324.h,
                width: 360.w,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage(Assets.images.png.rectangle29.path),
                        height: 173.h,
                        width: 360.w,
                      ),
                      SizedBox(
                        width: 5.h,
                      ),
                      Image(
                        image: AssetImage(Assets.images.png.rectangle32.path),
                        height: 173.h,
                        width: 360.w,
                      ),
                      SizedBox(
                        width: 5.h,
                      ),
                      Image(
                        image: AssetImage(Assets.images.png.rectangle29.path),
                        height: 173.h,
                        width: 360.w,
                      ),
                      SizedBox(
                        width: 5.h,
                      ),
                      Image(
                        image: AssetImage(Assets.images.png.rectangle32.path),
                        height: 173.h,
                        width: 360.w,
                      ),
                      SizedBox(
                        width: 5.h,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
