import 'package:industry_conference/screens/venue/MapWidget.dart';
import 'package:industry_conference/screens/widgets/CardWithIconAndText.dart';
import 'package:industry_conference/screens/widgets/TextTitle.dart';
import 'package:industry_conference/utils/size_config.dart';
import 'package:flutter/material.dart';

class VenueBody extends StatelessWidget {
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
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getProportionateScreenHeight(20)),
                const TextTitle(text: 'Venue'),
                SizedBox(height: getProportionateScreenHeight(25)),
                const CardWithIconAndText(
                    icon: 'assets/icons/current_location.png',
                    text: 'HITEX Exhibition Center Izzat Nagar \nHyderabad - 500 084, Telangana, India.'
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                MapWidget()
          
              ],
            ),
          ),
        )
      ],
    );
  }

}