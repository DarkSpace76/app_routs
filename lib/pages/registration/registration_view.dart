import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:zwork/components/button.dart';
import 'package:zwork/components/text.dart';
import 'package:zwork/pages/registration/registration_controller.dart';
import 'package:zwork/resource/const.dart';

class RegistrationView extends GetView<RegistrationController> {
  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, current) {
        return Scaffold(body: RegistrationPage());
      },
    );
  }
}

class RegistrationPage extends StatelessWidget {
  RegistrationController _controller = Get.put(RegistrationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _body(context),
      ),
    );
  }
}

Widget _body(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(15),
    child: Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              appHeaderText('register'.tr, bold: true),
              SizedBox(height: defaultPadding * 0.7),
              buttonAuth('use_phone_number'.tr, onPress: () {
                /* => Get.toNamed(AppRouts.registrationWithPhone) */
              }),
              SizedBox(height: defaultPadding * 0.3),
              buttonAuth('use_email'.tr, onPress: () {
                /* => Get.toNamed(AppRouts.registrationWithEmail) */
              }),
              SizedBox(height: defaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  appText('already_reg'.tr),
                  TextButton(
                      onPressed: () {/* => Get.offAllNamed(AppRouts.login) */},
                      child: appText('login'.tr + '!', underline: true))
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
