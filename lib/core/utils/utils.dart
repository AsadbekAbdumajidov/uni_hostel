// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const BASE_URL = 'http://api.unihostel.uz/v1/';
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

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
