import 'package:flutter/cupertino.dart';

class ColorManager {
  // Primary Colors
  static const Color primary = CupertinoColors.activeBlue;
  static const Color darkPrimary = CupertinoColors.activeBlue;
  static const Color lightPrimary =
      CupertinoColors.activeBlue; // color with 80% opacity

  // Gray Colors
  static const Color darkGrey = Color(0xff525252);
  static const Color lightGrey = Color(0xff9E9E9E);
  static const Color grey = Color(0xff737477);
  static const Color grey1 = Color(0xff707070);
  static const Color grey2 = Color(0xff797979);

  // Black ^ White
  static const Color white = Color(0xffFFFFFF);
  static const Color black = Color(0xff000000);

  // Messages Status Colors
  static const Color error = Color(0xffe61f34); // red color
  static const Color success = Color(0xff1fe62c); // green color
  static const Color warning = Color(0xffffff00); // Yellow color
}
