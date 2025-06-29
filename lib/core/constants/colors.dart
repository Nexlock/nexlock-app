import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF5284FF);
  static const Color secondary = Color(0xFF1C0140);
  static const Color accent = Color(0xFFF6D54C);
  static const Color background = Colors.white;

  // Additional colors that might be useful
  static const Color surface = Colors.white;
  static const Color onPrimary = Colors.white;
  static const Color onSecondary = Colors.white;
  static const Color onAccent = Color(0xFF1C0140);
  static const Color onBackground = Color(0xFF1C0140);

  // Glassmorphic gradient backgrounds
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF667eea), Color(0xFF764ba2)],
  );

  static const LinearGradient secondaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF764ba2), Color(0xFF667eea)],
  );

  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF667eea),
      Color(0xFF764ba2),
      Color(0xFFf093fb),
      Color(0xFFf5576c),
    ],
    stops: [0.0, 0.3, 0.7, 1.0],
  );

  // Glassmorphic surface colors
  static const Color glassSurface = Color(0x15FFFFFF);
  static const Color glassBorder = Color(0x25FFFFFF);
  static const Color glassHighlight = Color(0x30FFFFFF);
}
