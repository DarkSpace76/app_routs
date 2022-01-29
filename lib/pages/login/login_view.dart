import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:zwork/components/button.dart';
import 'package:zwork/components/text.dart';
import 'package:zwork/pages/login/login_controller.dart';
import 'package:zwork/resource/const.dart';

import '../../responsive.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, current) {
        return Scaffold(body: LoginPage());
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: maxConstraints),
            child: _body(context),
          ),
        ),
      ),
    );
  }
}

Widget _body(BuildContext context) {
  return Responsive(
    mobile: mobile(),
    tablet: mobile(),
    desctop: mobile(),
  );
}

Widget mobile() {
  return Container(
    padding: const EdgeInsets.all(15),
    child: Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              appHeaderText('login'.tr, bold: true),
              SizedBox(height: defaultPadding * 0.7),
              buttonAuth('use_phone_number'.tr,
                  onPress: () {/* => Get.toNamed(AppRouts.loginWithPhone) */}),
              SizedBox(height: defaultPadding * 0.3),
              buttonAuth('use_email'.tr,
                  onPress: () {/* => Get.toNamed(AppRouts.loginWithEmail) */}),
              SizedBox(height: defaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  appText('no_profile'.tr),
                  TextButton(
                      onPressed: () {
                        /* => Get.offAndToNamed(AppRouts.registration) */
                      },
                      child: appText('no_prfile_reg'.tr, underline: true))
                ],
              ),
            ],
          ),
        ),
        appText('private_policy'.tr, textAlign: TextAlign.center),
      ],
    ),
  );
}
