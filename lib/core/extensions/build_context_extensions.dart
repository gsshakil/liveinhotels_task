import 'package:flutter/material.dart';

extension NavigatorContext on BuildContext {
  void pop<T extends Object?>([T? result]) {
    return Navigator.of(this).pop();
  }

  Future<T?> pushNamed<T extends Object?>(String routeName,
      {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }
}

// extension ThemeContext on BuildContext {
//   void colorScheme<T extends ColorScheme>([T? result]) {
//     Theme.of(this).colorScheme;
//   }

//   void textTheme<T extends TextTheme>() {
//     Theme.of(this).textTheme;
//   }
// }
