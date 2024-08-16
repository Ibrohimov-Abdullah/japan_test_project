import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:japan_project/src/features/med_card/view/widgets/saved_widget.dart';

import 'notification_widget.dart';

class MedCardList extends StatelessWidget {
  const MedCardList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      "Уведомления",
      "История подписки",
      "Мои карты",
      "Сохраненные",
      "Лекарства",
      "Заметка лекарств",
      "Настройки",
    ];

    List<String> listAssets = [
      "assets/icons/bell.svg",
      "assets/icons/heart.svg",
      "assets/icons/credit-card.svg",
      "assets/icons/Saved.svg",
      "assets/icons/pill.svg",
      "assets/icons/notes.svg",
      "assets/icons/settings.svg",
    ];

    return ListView.builder(
      itemCount: list.length,
      padding: REdgeInsets.symmetric(horizontal: 12),
      itemBuilder: (context, index) => Column(
        children: [
          ListTile(
              onTap: () {
                log("message");
              },
              splashColor: Colors.black12,
              title: Text(
                list[index],
                style: const TextStyle(color: Colors.black),
              ),
              leading: SvgPicture.asset(listAssets[index]),
              trailing: list[index] == "Уведомления"
                  ? const NotificationBadge(count: '2')
                  : list[index] == "Сохраненные"
                  ? const SavedBadge(count: '12')
                  : null),
          Row(
            children: [
              SizedBox(width: 14.w),
              Expanded(
                child: Padding(
                  padding: REdgeInsets.only(left: 40),
                  child: const Divider(
                    height: 1,
                    thickness: 1,
                    color: Color(0xffF5F6F7),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
