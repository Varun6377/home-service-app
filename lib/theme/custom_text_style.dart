import 'package:flutter/material.dart';
import '../utils/app_export.dart';

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get helveticaNeue {
    return copyWith(
      fontFamily: 'HelveticaNeue',
    );
  }
}

class CustomTextStyles {
  static get bodyMediumInter => theme.textTheme.bodyMedium!.inter.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumInterBlack90001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: colors.black90001,
      );
  static get bodyMediumInterBluegray400 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: colors.blueGray400,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumInterGray60001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: colors.gray60001,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumInterIndigo300 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: colors.indigo300,
        fontSize: 13,
      );
  static get titleLargeBlack90001 => theme.textTheme.titleLarge!.copyWith(
        color: colors.black90001,
        fontSize: 22,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBluegray40001 => theme.textTheme.titleMedium!.copyWith(
        color: colors.blueGray40001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterErrorContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterGray100 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: colors.gray100,
        fontSize: 17,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack90001 => theme.textTheme.titleSmall!.copyWith(
        color: colors.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack90001SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: colors.black90001,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray800 => theme.textTheme.titleSmall!.copyWith(
        color: colors.blueGray800,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleSmallGray100 => theme.textTheme.titleSmall!.copyWith(
        color: colors.gray100,
        fontSize: 15,
      );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
        color: colors.gray500,
        fontSize: 15,
      );
  static get titleSmallHelveticaNeueBlue500 =>
      theme.textTheme.titleSmall!.helveticaNeue.copyWith(
        color: colors.blue500,
      );
  static get titleSmallHelveticaNeueGray =>
      theme.textTheme.titleSmall!.helveticaNeue.copyWith(
        color: theme.colorScheme.errorContainer,
      );
}
