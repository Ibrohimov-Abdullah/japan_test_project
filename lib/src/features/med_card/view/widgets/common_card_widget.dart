import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonCardWidget extends StatelessWidget {
  const CommonCardWidget({super.key, required this.picture, required this.text, required this.text2});

  final String picture;
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 106.w,
      height: 99.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: const Color(0xff257A77),
      ),
      child: Padding(
        padding: REdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(picture),
            6.verticalSpace,
            Text(
              text,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: CupertinoColors.white,
              ),
            ),
            Text(
              text2,
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600, color: CupertinoColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
