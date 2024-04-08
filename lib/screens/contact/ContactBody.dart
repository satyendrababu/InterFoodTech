import 'package:inter_food_tech/screens/exhibitor_registration/ExhibitorRegistrationScreen.dart';
import 'package:inter_food_tech/screens/web_pdf_viewer/WebViewFaceBookScreen.dart';
import 'package:inter_food_tech/screens/widgets/CardWithIconAndText.dart';
import 'package:inter_food_tech/screens/widgets/IconSocialMedia.dart';
import 'package:inter_food_tech/screens/widgets/TextHeading.dart';
import 'package:inter_food_tech/screens/widgets/TextTitle.dart';
import 'package:inter_food_tech/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../widgets/IconBg.dart';

class ContactBody extends StatelessWidget {
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
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getProportionateScreenHeight(20)),
                const TextTitle(text: 'Contact'),
                /*SizedBox(height: getProportionateScreenHeight(16)),
                const TextHeading(heading: 'Exhibition Secretariat'),*/
                SizedBox(height: getProportionateScreenHeight(16)),
                /*const CardWithIconAndText(
                    icon: 'assets/icons/home_blue.png',
                    text:
                        'Office No. 406, WestEnd Mall, \nRoad No. 36, Jubilee Hills, \nHyderabad - 500033'),
*/
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                  ),
                  color: Colors.white,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        leading: IconBg(icon: 'assets/icons/home_blue.png'),
                        title: Text(
                          'VA Exhibitions Pvt. Ltd.\n406, WestEnd Mall, \nRoad No. 36, Jubilee Hills, \nHyderabad - 500033',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ],

                  ),
                ),


                SizedBox(height: getProportionateScreenHeight(10)),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                  ),
                  color: Colors.white,
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(height: getProportionateScreenHeight(10)),
                      ListTile(
                        leading: IconBg(icon: 'assets/icons/person.png'),
                        title: Text(
                          'Mukhtar Pathan',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      ListTile(
                        leading: IconBg(icon: 'assets/icons/office.png'),
                        title: Text(
                          'Director Sales',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      ListTile(
                        leading: IconBg(icon: 'assets/icons/phone.png'),
                        title: Text(
                          '+91 99850 99009',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      ListTile(
                        leading: IconBg(icon: 'assets/icons/mail.png'),
                        title: Text(
                          'mp@vaexhibitions.com',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(12)),
                      Divider(),
                      SizedBox(height: getProportionateScreenHeight(10)),
                      ListTile(
                        leading: IconBg(icon: 'assets/icons/person.png'),
                        title: Text(
                          'Vamshidhar Gurram',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      ListTile(
                        leading: IconBg(icon: 'assets/icons/office.png'),
                        title: Text(
                          'Director',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      ListTile(
                        leading: IconBg(icon: 'assets/icons/phone.png'),
                        title: Text(
                          '+91 9848 450521',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      ListTile(
                        leading: IconBg(icon: 'assets/icons/mail.png'),
                        title: Text(
                          'gv@vaexhibitions.com',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(12)),
                      Divider(),
                      SizedBox(height: getProportionateScreenHeight(10)),
                      ListTile(
                        leading: IconBg(icon: 'assets/icons/person.png'),
                        title: Text(
                          'Vijay Pyaraka',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      ListTile(
                        leading: IconBg(icon: 'assets/icons/office.png'),
                        title: Text(
                          'Asst. Project',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      ListTile(
                        leading: IconBg(icon: 'assets/icons/phone.png'),
                        title: Text(
                          '+91 99490 10217',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      ListTile(
                        leading: IconBg(icon: 'assets/icons/mail.png'),
                        title: Text(
                          'vj@vaexhibitions.com',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(18)),
                    ],

                  ),
                ),
              ],
            ),
          ),
        ))
      ],
    );
  }
}
