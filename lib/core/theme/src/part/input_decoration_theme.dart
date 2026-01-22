part of '../theme_data.dart';

class CustomInputDecorationTheme with ThemeExtensions {
  final BorderRadius _borderRadius = BorderRadius.circular(1);

  InputDecorationTheme call() {
    return InputDecorationTheme(
      hintStyle: textStyle.bodyLarge.copyWith(color: color.text.secondary),
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      border: OutlineInputBorder(borderRadius: _borderRadius),
      enabledBorder: OutlineInputBorder(
        borderRadius: _borderRadius,
        borderSide: BorderSide(color: color.border, width: 1),
      ),
      suffixIconColor: color.icon.secondary,
      disabledBorder: OutlineInputBorder(borderRadius: _borderRadius),
      errorBorder: OutlineInputBorder(
        borderRadius: _borderRadius,
        borderSide: BorderSide(color: color.error, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: _borderRadius,
        borderSide: BorderSide(color: color.primaryBlue, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: _borderRadius,
        borderSide: BorderSide(color: color.primaryRed, width: 1),
      ),
      errorStyle: textStyle.bodyLarge.copyWith(color: color.text.error),
    );
  }
}
