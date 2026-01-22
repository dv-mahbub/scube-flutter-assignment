import 'package:flutter/material.dart';

class _Color {
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color blue = Color(0xFF0096FC);
  static const Color darkRed = Color(0xFFBB2025);
  static const Color red = Color(0xFFff0000);
  static const Color darkGray = Color(0xFF212121);
  static const Color dimGray = Color.fromARGB(255, 239, 239, 243);
  static const Color orange = Color(0xFFf28c28);
  static const Color green = Color.fromARGB(255, 28, 112, 31);
  static const Color gray = Color.fromARGB(255, 98, 98, 104);
  static const Color lightBlule = Color.fromARGB(255, 209, 231, 233);
  static const lightRed = Color(0xFFEAEBFF);
}

class _AppBarColor {
  const _AppBarColor();
  Color get background => _Color.white;
  Color get icon => _Color.darkGray;
  Color get primaryIcon => _Color.gray;
  Color get title => _Color.darkGray;
}

class _PageViewColor {
  const _PageViewColor();
  final active = _Color.blue;
  final inactive = _Color.dimGray;
}

class _TextColor {
  const _TextColor();
  final primary = _Color.black;
  final grey = _Color.gray;
  final secondary = _Color.white;
  final primaryRed = _Color.darkRed;
  final primaryBlue = _Color.blue;
  final error = _Color.red;
}

class _IconColor {
  const _IconColor();
  final primary = _Color.black;
  final secondary = _Color.gray;
  final primaryRed = _Color.darkRed;
  final primaryBlue = _Color.blue;
}

class ColorExtension extends ThemeExtension<ColorExtension> {
  final background = _Color.dimGray;
  final dark = _Color.black;
  final border = _Color.gray;
  final onPrimary = _Color.black;
  final primaryBlue = _Color.blue;
  final primaryRed = _Color.darkRed;
  final secondary = _Color.orange;
  final scaffoldBackground = _Color.black;
  final success = _Color.green;
  final error = _Color.red;
  final shadow = _Color.dimGray;
  final lightBlueContainer = _Color.lightBlule;
  final secondaryContainer = _Color.lightRed;

  final appBar = const _AppBarColor();
  final pageView = const _PageViewColor();
  final text = const _TextColor();
  final icon = const _IconColor();

  const ColorExtension();

  @override
  ThemeExtension<ColorExtension> copyWith() => const ColorExtension();

  @override
  ThemeExtension<ColorExtension> lerp(other, t) => const ColorExtension();
}
