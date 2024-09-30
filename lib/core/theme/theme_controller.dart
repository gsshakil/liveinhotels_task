import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:liveinhotels_task/core/value_notifiers.dart';


class ThemeController {
  static void init() {
    log('Initializing theme..');
  }

  static void toggleThemeMode() {
    if (themeMode.value == ThemeMode.light) {
      themeMode.value = ThemeMode.dark;
    } else  if(themeMode.value == ThemeMode.dark){
      themeMode.value = ThemeMode.light;
    }
  }
}
