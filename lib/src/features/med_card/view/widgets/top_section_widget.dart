import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'age_weight_row_widget.dart';
import 'bmi_premium_row_widget.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 358.h,
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
        image: DecorationImage(
          image: AssetImage("assets/images/image_of_top.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          60.verticalSpace,
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Container(
                  height: 48.h,
                  width: 48.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/bro_image.png"),
                    ),
                  ),
                ),
                12.horizontalSpace,
                Text(
                  "Test Testov",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                  ),
                ),
                const Spacer(),
                SvgPicture.asset("assets/icons/edit.svg")
              ],
            ),
          ),
          24.verticalSpace,
          const AgeHeightWeightRow(),
          12.verticalSpace,
          const BmiPremiumRow(),
        ],
      ),
    );
  }
}
