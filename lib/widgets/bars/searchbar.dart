import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ohms/gen/assets.gen.dart';

class AppSearchBar extends StatefulWidget {
  const AppSearchBar(
      {super.key,
      required this.searchController,
      required this.bgColor,
      required this.inputAreaColor,
      required this.textColor,
      this.showBackButton = false});

  final TextEditingController searchController;
  final Color bgColor;
  final Color textColor;
  final Color inputAreaColor;
  final bool showBackButton;

  @override
  State<AppSearchBar> createState() => _AppSearchBarState();
}

class _AppSearchBarState extends State<AppSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: widget.showBackButton ? 30 : 20,
          bottom: widget.showBackButton ? 20 : 8,
          right: widget.showBackButton ? 10 : 20,
          left: widget.showBackButton ? 5 : 20),
      height: widget.showBackButton ? 100.h : 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: widget.bgColor,
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                if (widget.showBackButton == true)
                  SizedBox(
                    width: 60.h,
                  ),
                Image(
                  image: AssetImage(Assets.icons.location.path),
                  height: 20.h,
                  width: 17.w,
                  color: widget.textColor,
                ),
                Text(
                  "COMSATS UNIVERSITY ISLAMABAD",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: widget.textColor),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                if (widget.showBackButton == true)
                  Image(
                    image: AssetImage(Assets.icons.arrowcircleleft.path),
                    height: 36.h,
                    width: 36.h,
                    color: widget.textColor,
                  ),
                SizedBox(
                  width: 5.h,
                ),
                Expanded(
                  child: TextField(
                      textAlign: TextAlign.start,
                      controller: widget.searchController,
                      cursorWidth: BorderSide.strokeAlignCenter,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none),
                          hintText: "Search for shops and resturants",
                          hintStyle:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Colors.grey,
                                  ),
                          filled: true,
                          fillColor: widget.inputAreaColor,
                          focusColor: Colors.blue,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Colors.blue, width: 2)))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
