import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../pages/search_page.dart';
import 'main_card_widget.dart';

class HospitalList extends ConsumerWidget {
  const HospitalList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hospitals = ref.watch(hospitalSearchProvider);

    if (hospitals.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    return ListView.builder(
      itemCount: hospitals.length,
      itemBuilder: (context, index) {
        final hospital = hospitals[index];
        return MainCardWidget(
          images: hospital.hospitalPhotos ?? [],
          title: hospital.hospitalName ?? 'No Title',
          subtitle: hospital.hospitalLocation ?? 'No Address',
        );
      },
    );
  }
}
