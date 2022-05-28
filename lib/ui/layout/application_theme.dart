import 'package:flutter_architecture/ui/layout/application_colors.dart';
import 'package:flutter/material.dart';

mixin ApplicationTheme {
  static const BorderSide _borderRed = BorderSide(color: ApplicationColors.red);
  static const BorderSide _borderGrey10 = BorderSide(color: ApplicationColors.gray10);

  static const InputDecoration inputDecorationBorderNone = InputDecoration(
    border: InputBorder.none,
    focusedBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    focusedErrorBorder: InputBorder.none,
  );

  static ThemeData get themeData => ThemeData(
        colorSchemeSeed: ApplicationColors.primary,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: ApplicationColors.primary,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: UnderlineInputBorder(borderSide: _borderGrey10),
          focusedBorder: UnderlineInputBorder(borderSide: _borderGrey10),
          enabledBorder: UnderlineInputBorder(borderSide: _borderGrey10),
          disabledBorder: UnderlineInputBorder(borderSide: _borderGrey10),
          errorBorder: UnderlineInputBorder(borderSide: _borderRed),
          focusedErrorBorder: UnderlineInputBorder(borderSide: _borderRed),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            alignment: Alignment.center,
            backgroundColor: MaterialStateProperty.all(ApplicationColors.gray0),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(14.0),
              ),
            ),
          ),
        ),
        textTheme: const TextTheme(
          headline2: TextStyle(
            fontSize: 28,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
            color: ApplicationColors.gray100,
          ),
          headline3: TextStyle(
            fontSize: 22,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
            color: ApplicationColors.gray100,
          ),
          caption: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            color: ApplicationColors.gray100,
          ),
          bodyText1: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            color: ApplicationColors.gray100,
          ),
        ),
      );
}
