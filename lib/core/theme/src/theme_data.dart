import 'package:flutter/material.dart';

import 'theme_extensions/extensions.dart';

part 'part/app_bar_theme.dart';
part 'part/button_theme_data.dart';
part 'part/input_decoration_theme.dart';

class CustomThemeData with ThemeExtensions {
  ThemeData call() {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'LiAdorNoirrit',
      extensions: <ThemeExtension<dynamic>>[textStyle, color],
      colorScheme: ColorScheme.light(primary: color.primaryBlue),
      appBarTheme: CustomAppBarTheme()(),
      elevatedButtonTheme: CustomElevatedButtonThemeData()(),
      filledButtonTheme: CustomFilledButtonThemeData()(),
      textButtonTheme: CustomTextButtonThemeData()(),
      iconTheme: IconThemeData(color: color.border),
      inputDecorationTheme: CustomInputDecorationTheme()(),
      scaffoldBackgroundColor: color.scaffoldBackground,
    );
  }
}
