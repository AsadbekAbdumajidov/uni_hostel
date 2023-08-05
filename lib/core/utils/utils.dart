// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const BASE_URL = 'https://api.unihostel.uz/v1/';
const ACCESS_TOKEN = 'access-token';
const REFRESH_TOKEN = 'refresh-token';

enum Status { LOADING, UNKNOWN, SUCCESS, ERROR }

List<String> checkBoxList = [
  "iron_notebook",
  "womens_book",
  "youths_notebook",
  "foster_home",
  "no_breadwinner",
  "one_parents_is_dead",
  "disabled",
  "gifted_student"
];

     List<String> coursesList = [
  "1-kurs",
  "2-kurs",
  "3-kurs",
  "4-kurs",
  "5-kurs",
  "6-kurs",
  "7-kurs",
];

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
