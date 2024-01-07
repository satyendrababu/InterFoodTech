import 'package:dairy_industry_conference/screens/widgets/TextHeading.dart';
import 'package:dairy_industry_conference/screens/widgets/TextTitle.dart';
import 'package:dairy_industry_conference/screens/widgets/TextWithArrow.dart';
import 'package:dairy_industry_conference/utils/size_config.dart';
import 'package:flutter/material.dart';

class ExhibitorProfileBody extends StatelessWidget {
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
                  const TextTitle(text: 'Exhibitor Profile'),

                  SizedBox(height: getProportionateScreenHeight(25)),
                  const TextHeading(heading: 'Milk and Milk Products'),
                  SizedBox(height: getProportionateScreenHeight(16)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWithArrow(text: 'Liquid Milk'),
                          SizedBox(height: 10,),
                          TextWithArrow(text: 'Yogurt, Curd, Lassi, Flavored milk'),
                          SizedBox(height: 10,),
                          TextWithArrow(text: 'Milk Powders'),
                          SizedBox(height: 10,),
                          TextWithArrow(text: 'Cheese'),
                          SizedBox(height: 10,),
                          TextWithArrow(text: 'Butter & Ghee'),
                          SizedBox(height: 10,),
                          TextWithArrow(text: 'Ice-cream'),
                          SizedBox(height: 10,),
                          TextWithArrow(text: 'Indian milk based sweets'),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(21)),
                  const TextHeading(heading: 'Veterinary'),
                  SizedBox(height: getProportionateScreenHeight(16)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWithArrow(text: 'Medical & Biological'),
                          SizedBox(height: 10,),
                          TextWithArrow(text: 'Medicines & Vaccines'),
                          SizedBox(height: 10,),
                          TextWithArrow(text: 'Breeding Technology & Equipment'),
                          SizedBox(height: 10,),
                          TextWithArrow(text: 'Semen Storage'),
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