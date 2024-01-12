import 'package:dairy_industry_conference/screens/widgets/TextHeading.dart';
import 'package:dairy_industry_conference/screens/widgets/TextTitle.dart';
import 'package:dairy_industry_conference/screens/widgets/TextWithArrow.dart';
import 'package:dairy_industry_conference/utils/size_config.dart';
import 'package:flutter/material.dart';

class EventDetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Image.asset(
              'assets/images/home-bg.png',
              fit: BoxFit.cover,
            )
        ),
        SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: getProportionateScreenHeight(20)),
                  const TextTitle(text: 'Event Details'),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  const TextHeading(heading: 'Event Date: 04-05-06 March 2024'),
                  SizedBox(height: getProportionateScreenHeight(25)),
                  const TextHeading(heading: 'Event Highlights'),
                  SizedBox(height: getProportionateScreenHeight(16)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWithArrow(text: 'Exhibition'),
                          SizedBox(height: 10,),
                          TextWithArrow(text: 'Knowledge Sessions'),
                          SizedBox(height: 10,),
                          TextWithArrow(text: 'Illustrative Souvenir'),
                          SizedBox(height: 10,),
                          TextWithArrow(text: 'Poster Presentation'),
                          SizedBox(height: 10,),
                          TextWithArrow(text: 'Farmer Sessions'),
                          SizedBox(height: 10,),
                          TextWithArrow(text: 'Dr. Kurien Memorial Lecture'),
                          SizedBox(height: 10,),
                          TextWithArrow(text: 'Dr. M R Srinivasan Memorial Lecture'),
                          SizedBox(height: 10,),
                          TextWithArrow(text: 'CEO Roundtable discussion'),
                        ],
                      )
                    ],
                  )

                ],
              ),
            ))
      ],
    );
  }

  
}