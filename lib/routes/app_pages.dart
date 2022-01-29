import 'package:get/get.dart';
import 'package:zwork/pages/auth/auth_binding.dart';
import 'package:zwork/pages/auth/auth_view.dart';
import 'package:zwork/pages/login/login_binding.dart';
import 'package:zwork/pages/login/login_view.dart';
import 'package:zwork/pages/registration/registration_binding.dart';
import 'package:zwork/pages/registration/registration_view.dart';
import 'package:zwork/pages/root/root_binding.dart';
import 'package:zwork/pages/root/root_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const transition = Transition.noTransition;
  static final routes = [
    GetPage(
      name: '/',
      page: () => RootView(),
      binding: RootBinding(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
      transition: transition,
      children: [
        GetPage(
            transition: transition,
            name: Routes.AUTH,
            page: () => AuthView(),
            bindings: [
              AuthBinding()
            ],
            //middlewares: [EnsureNotAuthedMiddleware()],
            children: [
              GetPage(
                  transition: transition,
                  name: Routes.LOGIN,
                  page: () => LoginView(),
                  bindings: [LoginBinding()],
                  //middlewares: [EnsureNotAuthedMiddleware()],
                  children: []),
              GetPage(
                  transition: transition,
                  name: Routes.REGISTRATION,
                  page: () => RegistrationView(),
                  bindings: [RegistrationBinding()],
                  //middlewares: [EnsureNotAuthedMiddleware()],
                  children: []),
            ]),
      ],
    ),
  ];
}
