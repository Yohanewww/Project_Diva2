import 'package:flutter/cupertino.dart';

class Fonts {
  static String get body => "ProximaNova";
  static String get title => "ProximaNova";
}
 
class FontSizes {
  static double scale = 1;
   
  static double get body => 14 * scale; //try14-18px
  static double get bodySm => 12 * scale;
 
  static double get title => 24 * scale; //try24-30px
}
 
class TextStyles {
  
  static TextStyle get bodyFont => TextStyle(fontFamily: Fonts.body);
  static TextStyle get titleFont => TextStyle(fontFamily: Fonts.title);
 
  static TextStyle get title => titleFont.copyWith(fontSize: FontSizes.title);
  static TextStyle get titleLight => title.copyWith(fontWeight: FontWeight.w300);
 
  static TextStyle get body => bodyFont.copyWith(fontSize: FontSizes.body, fontWeight: FontWeight.w300);
  static TextStyle get bodySm => body.copyWith(fontSize: FontSizes.bodySm);
}