import 'package:flutter/material.dart';
import 'styles.dart';

final ThemeData appTheme = buildAppTheme();

ThemeData buildAppTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: themeColor,
    primaryTextTheme: buildAppTextTheme(base.primaryTextTheme),
    accentTextTheme: buildAppTextTheme(base.accentTextTheme)
  );
}

TextTheme buildAppTextTheme(TextTheme base) {
  return base.copyWith(
    headline: base.headline.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 20.0
    ),
    title: base.title.copyWith(
      fontSize: 18.0
    ),
    caption: base.caption.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0
    )
  ).apply(
    fontFamily: themeFont
  );
}