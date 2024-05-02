import 'package:flutter/material.dart';

ColorCodes get colors => CustomThemes().themeColor();
ThemeData get theme => CustomThemes().themeData();

class CustomThemes {
  ColorCodes _getThemeColors() {
    return ColorCodes();
  }

  ThemeData _getThemeData() {
    var colorScheme = ColorSchemes.colorCodesScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.gray900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(31),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colors.gray20001,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(31),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 36,
        space: 36,
        color: colors.gray600,
      ),
    );
  }

  ColorCodes themeColor() => _getThemeColors();

  ThemeData themeData() => _getThemeData();
}

class ColorSchemes {
  static final colorCodesScheme = ColorScheme.light(
    primary: Color(0XFFFFFFFF),
    errorContainer: Color(0XFFA1A4B2),
    onErrorContainer: Color(0XFF171717),
    onPrimary: Color(0XFF303030),
    onPrimaryContainer: Color(0XFF0C0C0C),
  );
}

class ColorCodes {
  Color get black900 => Color(0XFF0B0D11);
  Color get black90001 => Color(0XFF000000);
  Color get blue500 => Color(0XFF1D8CF2);
  Color get blueGray400 => Color(0XFF7E8389);
  Color get blueGray40001 => Color(0XFF8E8E8E);
  Color get blueGray800 => Color(0XFF3F414E);
  Color get gray100 => Color(0XFFF6F1FA);
  Color get gray10003 => Color(0XFFF2F2F7);
  Color get gray200 => Color(0XFFF0F0F0);
  Color get gray20001 => Color(0XFFEBEAEC);
  Color get gray30002 => Color(0XFFE5E5E5);
  Color get gray500 => Color(0XFF9C9C9C);
  Color get gray600 => Color(0XFF797979);
  Color get gray60001 => Color(0XFF757575);
  Color get gray900 => Color(0XFF171616);
  Color get indigo300 => Color(0XFF7583CA);
  Color get indigoA200 => Color(0XFF5A77FF);
}
