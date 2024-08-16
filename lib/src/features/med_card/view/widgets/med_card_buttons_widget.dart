import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common_card_widget.dart';

class MedCardButton extends StatelessWidget {
  final String title;
  final String value;
  final String icon;
  final VoidCallback onPressed;

  const MedCardButton({
    required this.title,
    required this.value,
    required this.icon,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.r)),
      child: CommonCardWidget(
        picture: icon,
        text: title,
        text2: value,
      ),
    );
  }
}
