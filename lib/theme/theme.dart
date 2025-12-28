import 'package:flutter/material.dart';

import 'package:stantsiia_fit_flutter/styles/styles.dart';

abstract final class AppTheme {
  static ThemeData getAppTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: FontFamily.fixel,

      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.grayDark,
        surface: AppColors.grayDark,
        onSurface: AppColors.whiteMilk,
        brightness: Brightness.dark,
      ),

      dividerTheme: DividerThemeData(
        radius: BorderRadius.all(AppBorderRadius.full),
        color: AppColors.whiteMilk,
      ),

      listTileTheme: ListTileThemeData(
        textColor: AppColors.whiteMilk,
        iconColor: AppColors.whiteMilk,
      ),

      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
        filled: true,

        hintStyle: AppFontSize.fs16.copyWith(
          fontWeight: FontWeight.w500,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(AppBorderRadius.r18),
          borderSide: BorderSide(color: AppColors.gray),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(AppBorderRadius.r18),
          borderSide: BorderSide(color: AppColors.gray),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(AppBorderRadius.r18),
          borderSide: BorderSide(color: AppColors.whiteMilk),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(AppBorderRadius.r18),
          borderSide: BorderSide(color: AppColors.error),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(AppBorderRadius.r18),
          borderSide: BorderSide(color: AppColors.error),
        ),
      ),

      bottomSheetTheme: BottomSheetThemeData(
        dragHandleColor: AppColors.whiteMilk,
        modalBackgroundColor: AppColors.grayDark,
        modalBarrierColor: AppColors.black.withValues(alpha: 0.7),
        modalElevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: AppBorderRadius.r30),
        ),
      ),
    );
  }
}
