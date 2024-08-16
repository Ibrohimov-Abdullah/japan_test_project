import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/med_card_list.dart';
import '../widgets/top_section_widget.dart';

class MedCardPage extends ConsumerWidget {
  const MedCardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          const TopSection(),
          16.verticalSpace,
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: REdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: const MedCardList(),
            ),
          ),
        ],
      ),
    );
  }
}
