import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ohms/gen/assets.gen.dart';
import 'package:ohms/router.gr.dart';
import 'package:ohms/utils/colors/colors.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(const Duration(seconds: 10), () {
  //     context.router.replace(const HomeRoute());
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(Assets.images.png.image3.path),
              width: 99,
              height: 114,
            ),
            const Text(
              "foodpanda",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
