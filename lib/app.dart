import 'package:flutter/material.dart';
import 'package:japan_project/src/core/widgets/bottom_navigation_bar_widget.dart';
import 'package:japan_project/src/features/splash/view/splash_page.dart';

class AppMaterialContext extends StatelessWidget {
  const AppMaterialContext({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
