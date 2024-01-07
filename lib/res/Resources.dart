import 'package:dairy_industry_conference/res/colors/AppColors.dart';
import 'package:dairy_industry_conference/res/dimentions/AppDimension.dart';
import 'package:dairy_industry_conference/res/strings/FrenchStrings.dart';
import 'package:dairy_industry_conference/res/strings/Strings.dart';
import 'package:flutter/cupertino.dart';
import 'strings/EnglishStrings.dart';

class Resources {
  BuildContext _context;

  Resources(this._context);

  Strings get strings {
    // It could be from the user preferences or even from the current locale
    Locale locale = Localizations.localeOf(_context);
    switch (locale.languageCode) {
      case 'fr':
        return FrenchStrings();
      default:
        return EnglishStrings();
    }
  }

  AppColors get color {
    return AppColors();
  }

  AppDimension get dimension {
    return AppDimension();
  }

  static Resources of(BuildContext context){
    return Resources(context);
  }
}