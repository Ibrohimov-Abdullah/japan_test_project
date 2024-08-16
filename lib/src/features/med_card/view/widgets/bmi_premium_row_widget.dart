import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BmiPremiumRow extends StatelessWidget {
  const BmiPremiumRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          onPressed: () {},
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.r)),
          child: Container(
            width: 166.w,
            height: 99.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff257A77),
            ),
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/user-heart.svg"),
                  6.verticalSpace,
                  Text(
                    "Индекс массы тела",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  6.verticalSpace,
                  Text(
                    "- (норма)",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
        12.horizontalSpace,
        MaterialButton(
          onPressed: () {},
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.r)),
          child: Container(
            width: 166.w,
            height: 99.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  const Color(0xFFB5AC49).withOpacity(0.5),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/logo.svg"),
                  6.verticalSpace,
                  Text(
                    "Dawa Premium",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  6.verticalSpace,
                  Text(
                    "до 12.02.2024",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
