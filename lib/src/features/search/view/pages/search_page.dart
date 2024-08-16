import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:japan_project/src/features/search/view/widgets/search_bar_widget.dart';

import '../../../../core/model/hospital_model.dart';
import '../../view_model/serch_vm.dart';
import '../widgets/hospital_list_widget.dart';

final hospitalSearchProvider = StateNotifierProvider<HospitalsNotifier, List<HospitalModel>>((ref) {
  return HospitalsNotifier();
});

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    ref.read(hospitalSearchProvider.notifier).fetchHospitals();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: REdgeInsets.only(left: 16.w),
          child: const Icon(Icons.arrow_back),
        ),
        leadingWidth: 20.w,
        title: SearchBarCustom(searchController: _searchController),
      ),
      body: const HospitalList(),
    );
  }
}
