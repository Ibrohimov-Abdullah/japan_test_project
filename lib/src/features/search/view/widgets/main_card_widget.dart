import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainCardWidget extends StatelessWidget {
  const MainCardWidget({super.key, required this.images, required this.title, required this.subtitle});

  final List<String> images;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return Container(
      margin: REdgeInsets.only(top: 16,left: 16,right: 16),
      width: 343.w,
      height: 219.h,
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: SizedBox(
              width: double.infinity,
              height: 146.h,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: pageController,
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Image.network(
                        images[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      );
                    },
                  ),
                  Positioned(
                    bottom: 8,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: SmoothPageIndicator(
                        controller: pageController,
                        count: images.length,
            
                        effect: ExpandingDotsEffect(
                          dotHeight: 8,
                          dotWidth: 7,
            
                          activeDotColor: Colors.white,
                          dotColor: Colors.grey.withOpacity(0.3),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          16.verticalSpace,
          Expanded(
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp, color: Colors.black),
                      ),
                      Text(
                        " | ",
                        style: TextStyle(color: const Color(0xffC6CFD7), fontSize: 16.sp),
                      ),
                      SvgPicture.asset("assets/icons/Stars.svg"),
                      Text(
                        " 4.9",
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp, color: Colors.black),
                      ),
                    ],
                  ),
                  4.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        subtitle,
                        style: TextStyle(color: const Color(0xff596066), fontSize: 13.sp, fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
