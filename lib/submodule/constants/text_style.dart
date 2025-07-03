import 'package:flutter/material.dart';
import 'package:s0ck_teacher/submodule/constants/color.dart';

abstract final class S0ckTextStyle {
  /// caption
  static TextStyle caption = defaultTextStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  /// label
  static TextStyle label = defaultTextStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  /// heading
  static TextStyle heading1 = defaultTextStyle.copyWith(
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );

  static TextStyle heading2 = defaultTextStyle.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  static TextStyle heading3 = defaultTextStyle.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  /// subTitle
  static TextStyle subTitle1 = defaultTextStyle.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static TextStyle subTitle2 = defaultTextStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle subTitle3 = defaultTextStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  /// body
  static TextStyle body1 = defaultTextStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle body2 = defaultTextStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  /// button
  static TextStyle button1 = defaultTextStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle button2 = defaultTextStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );
}

const TextStyle defaultTextStyle = TextStyle(
  color: S0ckColor.white,
  fontFamily: 'WantedSans',
);
