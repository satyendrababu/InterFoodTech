import 'package:dairy_industry_conference/screens/exhibitor_registration/ExhibitorRegistrationScreen.dart';
import 'package:dairy_industry_conference/screens/web_pdf_viewer/WebViewFaceBookScreen.dart';
import 'package:dairy_industry_conference/screens/widgets/CardWithIconAndText.dart';
import 'package:dairy_industry_conference/screens/widgets/IconSocialMedia.dart';
import 'package:dairy_industry_conference/screens/widgets/TextHeading.dart';
import 'package:dairy_industry_conference/screens/widgets/TextTitle.dart';
import 'package:dairy_industry_conference/utils/size_config.dart';
import 'package:flutter/material.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              const TextTitle(text: 'Contact'),
              SizedBox(height: getProportionateScreenHeight(16)),
              const TextHeading(heading: 'Exhibition Secretariat'),
              SizedBox(height: getProportionateScreenHeight(16)),
              const CardWithIconAndText(
                  icon: 'assets/icons/home_blue.png',
                  text:
                      'Office No. 406, WestEnd Mall, \nRoad No. 36, Jubilee Hills, \nHyderabad - 500033'),
              SizedBox(height: getProportionateScreenHeight(10)),
              const CardWithIconAndText(
                  icon: 'assets/icons/mail.png',
                  text: 'mp@vaexhibitions.com \nvj@vaexhibitions.com'),
              SizedBox(height: getProportionateScreenHeight(10)),
              const CardWithIconAndText(
                  icon: 'assets/icons/phone.png',
                  text: '+91 99490 10217 \n+91 99850 99009'),
              SizedBox(height: getProportionateScreenHeight(25)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextHeading(heading: 'Follow Us'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>
                                const WebViewFacebookScreen(
                                    url: 'https://www.facebook.com/IndianDairyAsso?mibextid=LQQJ4d')));
                          },
                          child: const IconSocialMedia(icon: 'assets/icons/fb.png')),
                      SizedBox(width: getProportionateScreenHeight(10)),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>
                                const ExhibitorRegistrationScreen(
                                    url: 'https://twitter.com/indiandairyasso?s=11')));
                          },
                          child: const IconSocialMedia(icon: 'assets/icons/x.png')),
                      SizedBox(width: getProportionateScreenHeight(10)),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>
                                const ExhibitorRegistrationScreen(
                                    url: 'https://www.linkedin.com/company/indiandairyasso/')));
                          },
                          child: const IconSocialMedia(icon: 'assets/icons/in.png')),
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
