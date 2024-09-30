import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

const FlexSchemeData customFlexTheme = FlexSchemeData(
  name: 'Custom LiveinHotels theme',
  description: 'Custom LiveinHotels theme, custom definition of all colors',
  light: FlexSchemeColor(
    primary: Color(0xFFB8A1DC),
    primaryContainer: Color(0xFFA0C2ED),
    secondary: Color(0xFFD26900),
    secondaryContainer: Color(0xFFFFD270),
    tertiary: Color(0xFF5C5C95),
    tertiaryContainer: Color(0xFFC8DBF8),
  ),
  dark: FlexSchemeColor(
    primary: Color(0xFFB8A1DC),
    primaryContainer: Color(0xFF3873BA),
    secondary: Color(0xFFFFD270),
    secondaryContainer: Color(0xFFD26900),
    tertiary: Color(0xFFC9CBFC),
    tertiaryContainer: Color(0xFF535393),
  ),
);
