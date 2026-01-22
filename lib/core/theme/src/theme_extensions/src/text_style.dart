import 'package:flutter/material.dart';

/// Defines consistent text styles used across the app.
/// Access with: `context.textStyle.headlineLarge`
class TextStyleExtension extends ThemeExtension<TextStyleExtension> {
  const TextStyleExtension();

  TextStyle _style(double size, FontWeight weight, Color color) =>
      TextStyle(fontSize: size, fontWeight: weight, color: color);

  // Headlines
  TextStyle get headlineLarge => _style(30, FontWeight.w600, Colors.black);
  TextStyle get headlineMedium => _style(26, FontWeight.w600, Colors.black);
  TextStyle get headlineSmall => _style(22, FontWeight.w600, Colors.black);

  // Titles
  TextStyle get titleLarge => _style(20, FontWeight.w500, Colors.black);
  TextStyle get titleMedium => _style(18, FontWeight.w500, Colors.black);
  TextStyle get titleSmall => _style(16, FontWeight.w500, Colors.black);

  // Body
  TextStyle get bodyLarge => _style(16, FontWeight.w400, Colors.black);
  TextStyle get bodyMedium => _style(15, FontWeight.w400, Colors.black);
  TextStyle get bodySmall => _style(13, FontWeight.w400, Colors.black);

  // Labels
  TextStyle get labelLarge => _style(14, FontWeight.w500, Colors.black);
  TextStyle get labelMedium => _style(12, FontWeight.w500, Colors.black);
  TextStyle get labelSmall => _style(10, FontWeight.w500, Colors.black);

  // Caption
  TextStyle get caption => _style(12, FontWeight.w400, Colors.black);

  @override
  ThemeExtension<TextStyleExtension> copyWith() => const TextStyleExtension();

  @override
  ThemeExtension<TextStyleExtension> lerp(covariant ThemeExtension<TextStyleExtension>? other, double t) =>
      const TextStyleExtension();
}

/// Shortcut for accessing text styles via context:
/// `context.textStyle.bodyLarge`
extension TextStyleExtensionX on BuildContext {
  TextStyleExtension get textStyle => Theme.of(this).extension<TextStyleExtension>()!;
}
