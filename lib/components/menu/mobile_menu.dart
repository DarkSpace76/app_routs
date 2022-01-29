import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zwork/components/menu/components/menu_items.dart';
import 'controllers/menu_controller.dart';

Widget mobileMenu() {
  MenuController mController = Get.find();

  return Obx(() => Card(
      margin: const EdgeInsets.fromLTRB(0, 3, 0, 0),
      elevation: 3,
      shadowColor: Colors.black,
      child: Container(
        color: Colors.white,
        height: 65,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            itemMenuMobile(
              isActive: mController.isActiveItem(MenuApp.vacancy),
              title: 'Вакансии',
              icon: Icons.work_outline_rounded,
              onPress: mController.onVacancyClick,
            ),
            itemMenuMobile(
              isActive: mController.isActiveItem(MenuApp.bookmark),
              title: 'Сохраненные',
              icon: Icons.bookmark_border_rounded,
              onPress: mController.onBookmarkClick,
            ),
            itemMenuMobile(
              isActive: mController.isActiveItem(MenuApp.profile),
              title: 'Профиль',
              icon: Icons.account_circle_outlined,
              onPress: mController.onProfileClick,
            ),
            itemMenuMobile(
              isActive: mController.isActiveItem(MenuApp.message),
              title: 'Сообщения',
              icon: Icons.message_outlined,
              onPress: mController.onMessageClick,
            ),
            /* itemMenuMobile(
              title: 'Выйти',
              icon: Icons.logout,
              onPress: () => authorization.logout(),
            ), */
          ],
        ),
      )));
}
