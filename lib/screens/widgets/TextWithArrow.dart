import 'package:flutter/material.dart';

class TextWithArrow extends StatelessWidget {
  final String text;
  const TextWithArrow({super.key, required this.text});


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
          width: 25,
          child: ColorFiltered(
            colorFilter: const ColorFilter.mode(
              Colors.white,  // Change this color to the desired color
              BlendMode.srcIn,
            ),
            child: Image.asset(
                'assets/icons/arrow_right.png'
            ),
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 16
            ),
          ),
        ),
        //const SizedBox(height: 16,)
      ],
    );
  }

}