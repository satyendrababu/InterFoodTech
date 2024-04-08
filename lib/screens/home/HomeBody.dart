import 'package:inter_food_tech/res/AppContextExtension.dart';
import 'package:inter_food_tech/screens/conference/ConferenceScreen.dart';
import 'package:inter_food_tech/screens/contact/ContactScreen.dart';
import 'package:inter_food_tech/screens/details/DetailsScreen.dart';
import 'package:inter_food_tech/screens/event_details/EventDetailsScreen.dart';
import 'package:inter_food_tech/screens/exhibitor_list/ExhibitorListScreen.dart';
import 'package:inter_food_tech/screens/exhibitor_profile/ExhibitorProfileScreen.dart';
import 'package:inter_food_tech/screens/exhibitor_registration/ExhibitorRegistrationScreen.dart';
import 'package:inter_food_tech/screens/floor_plan/FloorPlanScreen.dart';
import 'package:inter_food_tech/screens/widgets/MyTextView.dart';
import 'package:inter_food_tech/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../web_pdf_viewer/PdfViewerScreen.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

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
        /*SingleChildScrollView(
          child: SizedBox(
            height: SizeConfig.screenHeight,
            width: SizeConfig.screenWidth,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: const EdgeInsets.all(8),
              children: [
                const SizedBox.shrink(),
                eventDetails(context),
                exhibitorLogin(context),
                visitorLogin(context),
                exhibit(context),
                visitorRegistration(context),
                exhibitorList(context),
                stallLayout(context),
                concurrentEvents(context),
                contact(context),
                const SizedBox(height: 20),

              ],
            ),
          ),
        )*/
        SingleChildScrollView(
          child: SizedBox(
            height: SizeConfig.screenHeight,
            width: SizeConfig.screenWidth,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 16), // Add some space at the top
                  Padding(
                    padding: const EdgeInsets.only(left: 80, right: 80),
                    child: Row(
                      children: [
                        Expanded(
                          child: eventDetails(context),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 10), // Add some space at the top
                  Row(
                    children: [
                      Expanded(
                        child: exhibitorLogin(context),
                      ),
                      SizedBox(width: 10), // Add spacing between items
                      Expanded(
                        child: visitorLogin(context),
                      ),
                    ],
                  ),
                  SizedBox(height: 10), // Add spacing between rows
                  Row(
                    children: [
                      Expanded(
                        child: exhibit(context),
                      ),
                      SizedBox(width: 10), // Add spacing between items
                      Expanded(
                        child: visitorRegistration(context),
                      ),
                    ],
                  ),
                  SizedBox(height: 10), // Add spacing between rows
                  Row(
                    children: [
                      Expanded(
                        child: exhibitorList(context),
                      ),
                      SizedBox(width: 10), // Add spacing between items
                      Expanded(
                        child: stallLayout(context),
                      ),
                    ],
                  ),
                  SizedBox(height: 10), // Add spacing between rows
                  Row(
                    children: [
                      Expanded(
                        child: concurrentEvents(context),
                      ),
                      SizedBox(width: 10), // Add spacing between items
                      Expanded(
                        child: contact(context),
                      ),
                    ],
                  ),

                  // Add more rows as needed
                  // Ensure to provide proper spacing between rows and items
                ],
              ),
            ),
          ),
        )

      ],
    );
  }

  Card exhibitorLogin(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          //Navigator.pushNamed(context, EventDetailsScreen.id);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) =>
              const ExhibitorRegistrationScreen(
                  url: 'https://exhibitormanual.interfoodtech.com/eLogin.aspx')));
        },
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/exhbitor_food.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Exhibitor Login',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
  Card visitorLogin(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          //Navigator.pushNamed(context, EventDetailsScreen.id);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) =>
              const ExhibitorRegistrationScreen(
                  url: 'https://b2b.interfoodtech.com/eLogin')));
        },
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/visitor_food.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Visitor Login',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  Card eventDetails(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, EventDetailsScreen.id);
        },
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/show_food.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Event details',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  /*Card conference(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, ConferenceScreen.id);
        },
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),


            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/Seminars.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Conference',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }*/

  Card exhibit(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, ExhibitorProfileScreen.id);
        },
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/exhibit_food.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Exhibit',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  Card visitorRegistration(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) =>
              const ExhibitorRegistrationScreen(
                  url: 'https://interfoodtech.com/Visitor-Registration')));
        },
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/visit_food.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Visitor Registration',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  Card exhibitorList(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          //Navigator.pushNamed(context, ExhibitorListScreen.id);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) =>
              const ExhibitorRegistrationScreen(
                  url: 'https://exhibitormanual.interfoodtech.com/ExhibitorList')));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/exhibit_list_food.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Exhibitor List',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  Card stallLayout(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) =>
              const PdfViewerScreen(
                url: 'https://interfoodtech.com/Layout.pdf', title: '',)));
        },
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),


            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/floor_food.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Floor Plan',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  Card concurrentEvents(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) =>
              const ExhibitorRegistrationScreen(
                  url: 'https://interfoodtech.com/seminar')));
        },
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),


            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/seminars_food.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Concurrent Events',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  Card contact(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, ContactScreen.id);
        },
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),


            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/contact_food.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Contact',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
  
}