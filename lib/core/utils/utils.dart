// ignore_for_file: constant_identifier_names


import 'package:flutter/material.dart';

const BASE_URL = 'https://hostel.tma.uz/v1/';
const ACCESS_TOKEN = 'access-token';
const REFRESH_TOKEN = 'refresh-token';

enum Status { LOADING, UNKNOWN, SUCCESS, ERROR }

 final GlobalKey<NavigatorState> navigatorKey = GlobalKey();