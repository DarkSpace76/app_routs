import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devicelocale/devicelocale.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:zwork/db/fb.dart';
import 'package:zwork/resource/const.dart';
import 'package:zwork/resource/storage.dart';

import 'db/model/user.dart';

Future<void> initAppActivity() async {
  localeApp =
      /* 'en'; */ (await Devicelocale.currentLocale)?.split('-').first ?? 'en';
/* 
  (await FirebaseFirestore.instance
          .collection('activities')
          .doc(localeApp)
          .get())
      .data()!
      .forEach((key, value) {
    activitiesApp.add({key: value as String});
  });

  (await FirebaseFirestore.instance.collection('lang').doc(localeApp).get())
      .data()!
      .forEach((key, value) {
    langsApp.add({key: value as String});
  });

  (await FirebaseFirestore.instance
          .collection('job_title')
          .doc(localeApp)
          .get())
      .data()!
      .forEach((key, value) {
    jobTitlesApp.add({key: value as String});
  });

  timeWorkList[localeApp]?.forEach((key, value) {
    timeWorkApp.add({key: value});
  });

  print('initAppActivity'); */
}

String getJobTitle(int? value) {
  try {
    var res = jobTitlesApp
        .where((element) => element.keys.first.contains(value.toString()))
        .first
        .values
        .first;
    return res;
  } catch (e) {
    print(e);
  }
  return '';
}

Future<bool> checkUser(User? user) async {
  if (user == null) return false;
  var getUser =
      await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
  return !getUser.exists || getUser.data()!['isActive'] == false ? false : true;
}

Future<void> initBookmarks() async {
  if (user != null) {
    var res = await getBookmark(user!.uid!);
    userBookmarks.clear();
    for (var item in res.docs) {
      userBookmarks.add(item.id);
    }
  }
}
