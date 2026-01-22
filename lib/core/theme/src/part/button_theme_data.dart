part of '../theme_data.dart';

class CustomFilledButtonThemeData with ThemeExtensions {
  FilledButtonThemeData call() {
    return FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(color.primaryBlue),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6), // Added border radius
          ),
        ),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 18)),
        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 50)),
        textStyle: WidgetStateProperty.all(textStyle.bodyMedium),
      ),
    );
  }
}

class CustomElevatedButtonThemeData with ThemeExtensions {
  ElevatedButtonThemeData call() {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(0),
        shape: WidgetStateProperty.all(StadiumBorder(side: BorderSide(color: color.primaryBlue, width: 2))),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 24)),
        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 48)),
        textStyle: WidgetStateProperty.all(textStyle.titleMedium),
      ),
    );
  }
}

class CustomTextButtonThemeData with ThemeExtensions {
  TextButtonThemeData call() {
    return TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(color.text.primaryBlue),
        textStyle: WidgetStateProperty.all(textStyle.bodyMedium.copyWith(decoration: TextDecoration.underline)),
      ),
    );
  }
}
