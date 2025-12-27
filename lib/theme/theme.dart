import 'package:flutter/material.dart';

import 'package:stantsiia_fit_flutter/styles/styles.dart';

abstract final class AppTheme {
  static ThemeData getAppTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: FontFamily.fixel,

      colorScheme: ColorScheme.fromSeed(
        seedColor: AppStyles.colors.grayDark,
        surface: AppStyles.colors.grayDark,
        onSurface: AppStyles.colors.whiteMilk,
        brightness: Brightness.dark,
      ),

      dividerTheme: DividerThemeData(
        radius: BorderRadius.all(AppStyles.borderRadius.full),
        color: AppStyles.colors.whiteMilk,
      ),

      listTileTheme: ListTileThemeData(
        textColor: AppStyles.colors.whiteMilk,
        iconColor: AppStyles.colors.whiteMilk,
      ),

      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
        filled: true,

        hintStyle: AppStyles.fontSize.fs16.copyWith(
          fontWeight: FontWeight.w500,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(AppStyles.borderRadius.r18),
          borderSide: BorderSide(color: AppStyles.colors.gray),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(AppStyles.borderRadius.r18),
          borderSide: BorderSide(color: AppStyles.colors.gray),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(AppStyles.borderRadius.r18),
          borderSide: BorderSide(color: AppStyles.colors.whiteMilk),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(AppStyles.borderRadius.r18),
          borderSide: BorderSide(color: AppStyles.colors.error),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(AppStyles.borderRadius.r18),
          borderSide: BorderSide(color: AppStyles.colors.error),
        ),
      ),

      bottomSheetTheme: BottomSheetThemeData(
        dragHandleColor: AppStyles.colors.whiteMilk,
        modalBackgroundColor: AppStyles.colors.grayDark,
        modalBarrierColor: AppStyles.colors.black.withValues(alpha: 0.7),
        modalElevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: AppStyles.borderRadius.r30),
        ),
      ),
    );
  }
}
