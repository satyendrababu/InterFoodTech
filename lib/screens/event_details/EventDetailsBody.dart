import 'package:inter_food_tech/screens/event_details/TableForEventDetails.dart';
import 'package:inter_food_tech/screens/widgets/TextHeading.dart';
import 'package:inter_food_tech/screens/widgets/TextTitle.dart';
import 'package:inter_food_tech/screens/widgets/TextWithArrow.dart';
import 'package:inter_food_tech/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../widgets/MyTextView.dart';

class EventDetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Image.asset(
          'assets/images/home-bg.png',
          fit: BoxFit.cover,
        )),
        SafeArea(
            child: SingleChildScrollView(
              child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getProportionateScreenHeight(20)),
                const TextTitle(text: 'Event Details'),
                SizedBox(height: getProportionateScreenHeight(20)),
                const TextHeading(heading: 'Event Names'),
                SizedBox(height: getProportionateScreenHeight(25)),
                const TextWithArrow(text: 'Inter Food Tech'),
                const SizedBox(
                  height: 10,
                ),
                const TextWithArrow(text: 'Snack BakeTec'),
                const SizedBox(
                  height: 10,
                ),
                const TextWithArrow(text: 'Pac Mechex'),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(height: getProportionateScreenHeight(16)),
                MyTextView(
                    'Premier technology supplier fair for', Colors.white, 16),

                //const TextHeading(heading: 'Event Names'),
                SizedBox(height: getProportionateScreenHeight(16)),
                const TextHeading(
                    heading:
                        'food & beverage, snacks, bakery & confectionery processing and packaging'),
                SizedBox(height: getProportionateScreenHeight(20)),
                MyTextView('Dates : June 05 - 07, 2024', Colors.white, 18),
                SizedBox(height: getProportionateScreenHeight(16)),
                MyTextView(
                    'Venue : Yashoboomi, (IICC) New Delhi', Colors.white, 16),
                SizedBox(height: getProportionateScreenHeight(24)),
                Container(
                  height: 50,
                  width: SizeConfig.screenWidth,
                  color: Colors.white,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                    child:Text(
                      'Concurrent Event',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                      ),
                    )
                  ),
                ),
                TableForEventDetails(),
              
                /*const TextWithArrow(text: 'Exhibition'),
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
                    )*/
              ],
                        ),
                      ),
            ))
      ],
    );
  }
}
