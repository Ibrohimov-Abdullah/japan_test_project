import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/api/api.dart';
import '../../../core/model/hospital_model.dart';

class HospitalsNotifier extends StateNotifier<List<HospitalModel>> {
  HospitalsNotifier() : super([]);

  void fetchHospitals() async {
    String? result = await Api.GET(Api.apiGetAllHospitals);
    if (result != null) {
      state = hospitalModelFromJson(result);
    }
  }

  void search(String query) {
    if (query.isEmpty) {
      fetchHospitals(); // Reset to original data
    } else {
      state = state.where((hospital) {
        final hospitalNameLower = hospital.hospitalName?.toLowerCase() ?? '';
        final searchLower = query.toLowerCase();
        return hospitalNameLower.contains(searchLower);
      }).toList();
    }
  }
}
