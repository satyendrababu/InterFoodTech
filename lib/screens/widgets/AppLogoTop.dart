import 'package:inter_food_tech/res/AppContextExtension.dart';
import 'package:inter_food_tech/screens/widgets/MyTextView.dart';
import 'package:flutter/material.dart';

class AppLogoTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2)
      ),
      margin: EdgeInsets.symmetric(horizontal: 16),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(

            height: 80,
            child: Image.asset('assets/images/interfood.png'),
          ),

          Container(

            height: 90,
            child: Image.asset('assets/images/snack.png'),
          ),

          Container(

            height: 130,
            child: Image.asset('assets/images/pach.png'),
          ),
        ],
      ),
    );
  }
}
