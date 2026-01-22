part of '../theme_data.dart';

class CustomAppBarTheme with ThemeExtensions {
  AppBarTheme call() {
    return AppBarTheme(
      centerTitle: false,
      elevation: .01,
      shadowColor: Colors.black.withValues(alpha: 0.1),
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.white,
      titleTextStyle: textStyle.titleMedium.copyWith(color: color.appBar.title),
      iconTheme: IconThemeData(color: color.appBar.icon),
    );
  }
}
