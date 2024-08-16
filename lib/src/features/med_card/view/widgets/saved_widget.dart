import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedBadge extends StatelessWidget {
  final String count;

  const SavedBadge({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22.h,
      width: 28.w,
      decoration: BoxDecoration(
        color: const Color(0xffE9F8F2),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Center(
        child: Text(
          count,
          style: TextStyle(
            color: Colors.green,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
