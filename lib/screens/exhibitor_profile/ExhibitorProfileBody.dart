import 'package:inter_food_tech/screens/widgets/TextHeading.dart';
import 'package:inter_food_tech/screens/widgets/TextTitle.dart';
import 'package:inter_food_tech/screens/widgets/RoundedButton.dart';
import 'package:inter_food_tech/screens/widgets/TextWithArrow.dart';
import 'package:inter_food_tech/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../exhibitor_registration/ExhibitorRegistrationScreen.dart';

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
        Flexible(
          child: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: getProportionateScreenHeight(20)),
                      const TextTitle(text: 'Exhibitor Profile'),
                          
                      /*SizedBox(height: getProportionateScreenHeight(25)),
                      const TextHeading(heading: 'Milk and Milk Products'),*/
                      SizedBox(height: getProportionateScreenHeight(16)),
                
                      ListTile(
                        leading: SizedBox(
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
                        title: Text(
                          'Food & beverage processing technology',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),
                        ),
                      ),
                      ListTile(
                        leading: SizedBox(
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
                        title: Text(
                          'Snack, bakery & confectionery technology',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),
                        ),
                      ),
                      ListTile(
                        leading: SizedBox(
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
                        title: Text(
                          'Ingredients and auxiliary materials',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),
                        ),
                      ),
                      ListTile(
                        leading: SizedBox(
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
                        title: Text(
                          'Packaging Materials',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),
                        ),
                      ),
                      ListTile(
                        leading: SizedBox(
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
                        title: Text(
                          'Packaging machinery',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),
                        ),
                      ),
                      ListTile(
                        leading: SizedBox(
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
                        title: Text(
                          'Printing, coding, marking, stamping, sleeving, labeling & imprinting machines',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),
                        ),
                      ),
                      ListTile(
                        leading: SizedBox(
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
                        title: Text(
                          'Robotics, operating equipment and auxiliary devices',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),
                        ),
                      ),
                      ListTile(
                        leading: SizedBox(
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
                        title: Text(
                          'Components, assemblies, surface technology',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),
                        ),
                      ),
                      ListTile(
                        leading: SizedBox(
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
                        title: Text(
                          'Automation, software, control equipment',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),
                        ),
                      ),
                
                      /*const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWithArrow(text: 'Food & beverage processing technology'),
                              SizedBox(height: 10,),
                              TextWithArrow(text: 'Snack, bakery & confectionery technology'),
                              SizedBox(height: 10,),
                              TextWithArrow(text: 'Ingredients and auxiliary materials'),
                              SizedBox(height: 10,),
                              TextWithArrow(text: 'Packaging Materials'),
                              SizedBox(height: 10,),
                              TextWithArrow(text: 'Packaging machinery'),
                              SizedBox(height: 10,),
                              TextWithArrow(text: 'Printing, coding, marking, stamping, sleeving, labeling & imprinting machines'),
                              SizedBox(height: 10,),
                              TextWithArrow(text: 'Robotics, operating equipment and auxiliary devices'),
                              SizedBox(height: 10,),
                              TextWithArrow(text: 'Components, assemblies, surface technology'),
                              SizedBox(height: 10,),
                              TextWithArrow(text: 'Automation, software, control equipment'),
                          
                            ],
                          )
                        ],
                      ),*/
                      SizedBox(height: 16,),
                          
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 0),
                        child: RoundedButton(
                            "Exhibitor Registration",
                                () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) =>
                                      const ExhibitorRegistrationScreen(
                                          url: 'https://interfoodtech.com/ExhibitorEnquiry')));
                            }
                        ),
                      )
                          
                    ],
                  ),
                ),
              )),
        )
      ],
    );
  }


}