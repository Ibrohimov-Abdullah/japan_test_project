import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../pages/search_page.dart';

class SearchBarCustom extends ConsumerWidget {
  final TextEditingController searchController;

  const SearchBarCustom({super.key, required this.searchController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: REdgeInsets.only(left: 18.w),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(0xffF5F6F7),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: SizedBox(
          height: 36.h,
          width: 307.w,
          child: TextField(
            controller: searchController,
            cursorColor: Colors.black,
            textAlignVertical: TextAlignVertical.center,
            onChanged: (query) {
              ref.read(hospitalSearchProvider.notifier).search(query);
            },
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: REdgeInsets.all(8),
                child: SvgPicture.asset(
                  "assets/icons/search.svg",
                  height: 20.h,
                  width: 20.w,
                ),
              ),
              border: InputBorder.none,
              contentPadding: REdgeInsets.symmetric(vertical: 14.5),
            ),
          ),
        ),
      ),
    );
  }
}
