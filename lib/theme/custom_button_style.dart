import 'package:flutter/material.dart';
import '../utils/app_export.dart';

class CustomButtonStyles {
  static ButtonStyle get fillIndigo => ElevatedButton.styleFrom(
        backgroundColor: colors.indigo300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(31),
        ),
      );
  static ButtonStyle get outlineBlack => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onErrorContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(31),
        ),
        shadowColor: colors.black90001.withOpacity(0.25),
        elevation: 2,
      );
  static ButtonStyle get outlineBlackTL26 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onErrorContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26),
        ),
        shadowColor: colors.black90001.withOpacity(0.25),
        elevation: 2,
      );
  static ButtonStyle get outlineErrorContainer => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        side: BorderSide(
          color: theme.colorScheme.errorContainer,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26),
        ),
      );
}
