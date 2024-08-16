import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japan_project/src/core/widgets/custom_sreen_sizer_widget.dart';

import 'app.dart';

/// void main (to run the app. everything starts here)
void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => const CustomScreenUtil(
        enabledPreview: false,
        child: ProviderScope(
          child: AppMaterialContext(),
        ),
      );
}
