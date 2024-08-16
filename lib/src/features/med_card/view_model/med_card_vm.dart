import 'package:flutter_riverpod/flutter_riverpod.dart';

class MedCardController extends StateNotifier<Map<String, String>> {
  MedCardController() : super({
    "age": "-",
    "height": "-",
    "weight": "-",
  });

  void updateValue(String key, String value) {
    state = {
      ...state,
      key: value,
    };
  }
}

final medCardProvider = StateNotifierProvider<MedCardController, Map<String, String>>((ref) {
  return MedCardController();
});
