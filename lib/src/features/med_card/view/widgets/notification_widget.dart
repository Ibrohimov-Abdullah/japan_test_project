import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationBadge extends StatelessWidget {
  final String count;

  const NotificationBadge({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22.h,
      width: 20.w,
      decoration: BoxDecoration(
        color: const Color(0xffE93B50),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Center(
        child: Text(
          count,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
