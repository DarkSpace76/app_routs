import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:zwork/components/button.dart';
import 'package:zwork/db/model/user.dart';
import 'package:zwork/pages/auth/auth_controller.dart';
import 'package:zwork/pages/login/login_view.dart';
import 'package:zwork/pages/registration/registration_view.dart';
import 'package:zwork/resource/const.dart';
import 'package:zwork/responsive.dart';
import 'package:zwork/routes/app_pages.dart';

class AuthView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, current) {
        final currentLocation = current?.location;
        if (currentLocation?.startsWith(Routes.LOGIN) == true) {
          delegate.offNamed(Routes.LOGIN);
          return Scaffold(body: LoginView());
        }

        if (currentLocation?.startsWith(Routes.REGISTRATION) == true) {
          delegate.offNamed(Routes.REGISTRATION);
          return Scaffold(body: RegistrationView());
        }

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
        buttonAuth('register'.tr,
            bgColor: Colors.black,
            onPress: () => Get.rootDelegate.toNamed(Routes.REGISTRATION)),
        SizedBox(
          height: defaultPadding / 2,
        ),
        buttonAuth('login'.tr,
            onPress: () => Get.rootDelegate.toNamed(Routes.LOGIN)),
        SizedBox(
          height: defaultPadding / 2,
        ),
        TextButton(
          onPressed: () => Get.toNamed(Routes.LOGIN),
          child: Text('view_without_registration'.tr),
        )
      ],
    )),
  );
}
