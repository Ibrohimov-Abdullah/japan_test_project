import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:japan_project/src/features/med_card/view/pages/med_card_page.dart';
import 'package:japan_project/src/features/search/view/pages/search_page.dart';

final bottomNavProvider = StateProvider<int>((ref) => 2);

class MainPage extends ConsumerWidget {
  MainPage({super.key});

  final List<Widget> _pages = [
    const Scaffold(body: Center(child: Text('Главная'))),
    const Scaffold(body: Center(child: Text('Заведения'))),
    const SearchPage(),
    const Scaffold(body: Center(child: Text('Теле мед.'))),
    const MedCardPage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(bottomNavProvider);

    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 83.h,
        width: double.infinity,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (index) => ref.read(bottomNavProvider.notifier).state = index,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green, // Selected item color
          unselectedItemColor: const Color(0xFF8E9BA8), // Unselected item color
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/home.svg",
                color: selectedIndex == 0 ? Colors.green : const Color(0xFF8E9BA8),
              ),
              label: "Главная",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/building-hospital.svg",
                color: selectedIndex == 1 ? Colors.green : const Color(0xFF8E9BA8),
              ),
              label: "Заведения",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/search_default.svg",
                color: selectedIndex == 2 ? Colors.green : const Color(0xFF8E9BA8),
              ),
              label: "Поиск",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/headset.svg",
                color: selectedIndex == 3 ? Colors.green : const Color(0xFF8E9BA8),
              ),
              label: "Теле мед.",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/user.svg",
                color: selectedIndex == 4 ? Colors.green : const Color(0xFF8E9BA8),
              ),
              label: "Мед. карта",
            ),
          ],
        ),
      ),
    );
  }
}
