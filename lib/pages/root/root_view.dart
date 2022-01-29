import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:zwork/pages/root/root_controller.dart';
import 'package:zwork/routes/app_pages.dart';

class RootView extends GetView<RootController> {
  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, current) {
        return Scaffold(
          /* appBar: AppBar(
            title: Text(current?.location ?? ''),
            centerTitle: true,
          ), */
          body: GetRouterOutlet(
            initialRoute: /*  _path ?? */ Routes.AUTH,
          ),
        );
      },
    );
  }
}
