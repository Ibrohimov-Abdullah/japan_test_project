import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common_card_widget.dart';

class AgeHeightWeightRow extends StatelessWidget {
  const AgeHeightWeightRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          minWidth: 108.w,
          height: 100.h,
          onPressed: () {},
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.r)),
          child: const CommonCardWidget(
            picture: "assets/icons/calendar.svg",
            text: "Возраст",
            text2: "-",
          ),
        ),
        12.horizontalSpace,
        MaterialButton(
          minWidth: 108.w,
          height: 100.h,
          onPressed: () {},
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.r)),
          child: const CommonCardWidget(
            picture: "assets/icons/ruler.svg",
            text: "Рост",
            text2: "-",
          ),
        ),
        12.horizontalSpace,
        MaterialButton(
          minWidth: 108.w,
          height: 100.h,
          onPressed: () {},
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.r)),
          child: const CommonCardWidget(
            picture: "assets/icons/scale-outline.svg",
            text: "Вес",
            text2: "-",
          ),
        ),
      ],
    );
  }
}
