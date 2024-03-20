
import 'package:inter_food_tech/res/Resources.dart';
import 'package:flutter/cupertino.dart';



extension AppContext on BuildContext {
  Resources get resources => Resources.of(this);
}