import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zwork/components/cach_network_image.dart';
import 'package:zwork/components/menu/components/menu_items.dart';
import 'package:zwork/components/menu/controllers/menu_controller.dart';
import 'package:zwork/resource/storage.dart';

Widget webMenu() {
  MenuController mController = Get.find();

  return Obx(() => Card(
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 3),
        elevation: 3,
        shadowColor: Colors.black,
        child: Container(
          color: Colors.white,
          height: 65,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(flex: 1),
              Image.asset(
                'assets/images/splash.png',
                scale: 5,
                color: Colors.black,
              ),
              const Spacer(flex: 1),
              itemMenuWeb(
                isActive: mController.isActiveItem(MenuApp.vacancy),
                title: 'Вакансии',
                icon: Icons.work_outline_rounded,
                onPress: mController.onVacancyClick,
              ),
              itemMenuWeb(
                isActive: mController.isActiveItem(MenuApp.bookmark),
                title: 'Сохраненные',
                icon: Icons.bookmark_border_rounded,
                onPress: mController.onBookmarkClick,
              ),
              /* itemMenuWeb(
                isActive: mController.isActiveItem(MenuApp.profile),
                title: 'Профиль',
                icon: Icons.account_circle_outlined,
                onPress: mController.onProfileClick,
              ), */
              itemMenuWeb(
                isActive: mController.isActiveItem(MenuApp.message),
                title: 'Сообщения',
                icon: Icons.message_outlined,
                onPress: mController.onMessageClick,
              ),
              _userImageItem(onPress: mController.onProfileClick),
              const SizedBox(width: 50),
              /*  itemMenuWeb(
                title: 'Выход',
                icon: Icons.logout,
                onPress: () => authorization.logout(),
              ), */
              Spacer(flex: 1),
            ],
          ),
        ),
      ));
}

Widget _userImageItem({Function()? onPress}) {
  return ElevatedButton(
    onPressed: onPress,
    style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(2)),
        overlayColor: MaterialStateProperty.all(Colors.blue.withOpacity(0.05)),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(360),
        ))),
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(360)),
        child: SizedBox(
          height: 25,
          width: 25,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(360),
              child: Listener(child: cachNetworkImage(user?.photoUrl ?? ''))),
        ),
      ),
    ),
  );
}
