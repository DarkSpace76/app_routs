import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:zwork/components/button.dart';
import 'package:zwork/db/model/user.dart';
import 'package:zwork/pages/auth/auth_controller.dart';
import 'package:zwork/resource/const.dart';
import 'package:zwork/responsive.dart';

class AuthView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, current) {
        return Scaffold(body: AuthPage());
      },
    );
  }
}

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Responsive(
          mobile: mobile(),
          tablet: mobile(),
          desctop: mobile(),
        ));
  }
}

Widget mobile() {
  // UserInfoController controller = Get.find();
  User? user;
  return Container(
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buttonAuth('register'.tr, bgColor: Colors.black,
            onPress: () {/* => Get.toNamed(AppRouts.registration) */}),
        SizedBox(
          height: defaultPadding / 2,
        ),
        buttonAuth('login'.tr, onPress: () {
          /*  Get.toNamed(AppRouts.login); */
        }),
        SizedBox(
          height: defaultPadding / 2,
        ),
        TextButton(
          onPressed: () {/* => Get.toNamed(AppRouts.home) */},
          child: Text('view_without_registration'.tr),
        )
      ],
    )),
  );
}
