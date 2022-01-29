import 'dart:html' as html;
import 'package:get/get.dart';
import 'package:zwork/components/menu/components/menu_items.dart';
import 'package:zwork/resource/storage.dart';

class MenuController extends GetxController {
  var activeItem = Rx<MenuApp>(MenuApp.vacancy).obs;

  var menuRout = Rx<String?>(null).obs;

  bool isActiveItem(MenuApp index) => index == activeItem.value.value;

  void setItem(MenuApp index) => activeItem.value.value = index;

  Function()? onVacancyClick() {
    //if (user != null) {
    activeItem.value.value = MenuApp.vacancy;
    //goTo(AppRouts.vacancyList);
    //}
  }

  Function()? onBookmarkClick() {
    if (user != null) {
      activeItem.value.value = MenuApp.bookmark;
      //goTo(AppRouts.bookmarks);
    } else
      regDialog();
  }

  Function()? onProfileClick() {
    if (user != null) {
      activeItem.value.value = MenuApp.profile;
      /*  user!.userType == UserType.company
          ? goTo(AppRouts.company)
          : goTo(AppRouts.employee); */
    } else {
      regDialog();
    }
  }

  void goTo(String rout) {
    menuRout.value.value = rout;
    menuRout.value.refresh();
  }

  Function()? onMessageClick() {
    if (user != null) {
      activeItem.value.value = MenuApp.message;
      // goTo(AppRouts.chats);
    } else
      regDialog();
  }

  void updateWebUrl(String newUrl) {
    html.window.history.pushState(null, 'home', '#$newUrl');
  }

  void regDialog() {
    /*  mainShowDialog(
        Get.context!,
        alertDialog(
            content: registrationModalDialog(
                onCancel: () => Get.back(),
                onConfirm: () {
                  Get.back();
                  Get.toNamed(AppRouts.registration);
                }))); */
  }
}
