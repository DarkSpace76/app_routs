// ignore_for_file: non_constant_identifier_names, constant_identifier_names, unused_field
part of 'app_pages.dart';

abstract class Routes {
  static const AUTH = _Paths.AUTH;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTRATION = _Paths.REGISTRATION;
  static const LOG_WITH_PHONE = _Paths.LOGIN + _Paths.PHONE;
  static const LOG_WITH_EMAIL = _Paths.LOGIN + _Paths.EMAIL;
  static const VERIFICATION = _Paths.VERIFICATION;
  static const HOME = _Paths.HOME;
  static const VACANCY = _Paths.VACANCY;

  Routes._();
  //static String VACANCY_DETAIL(String docId) => '${_Paths.DASHBOARD}/$docId';
}

abstract class _Paths {
  static const AUTH = '/auth';
  static const LOGIN = '/login';
  static const PHONE = '/phone';
  static const EMAIL = '/email';
  static const REGISTRATION = '/registration';
  static const VERIFICATION = '/verification';
  static const FIRST_INFO = '/info';
  static const verificationFromReg = '/verification_reg';
  static const HOME = '/home';
  static const EMPLOYEE = '/employee';
  static const COMPANY = '/company';
  static const VACANCY = '/vacancy';
  static const VACANCIES_LILST = '/vacancy_list';
  static const VACANCY_RESPONSE = '/vacancy_response';
  static const USER = '/user';
  static const FILTER = '/filter';
  static const BOOKMARKS = '/bookmarks';
  static const CHATS = '/chats';
  static const RESPONSES = '/responses';
}
