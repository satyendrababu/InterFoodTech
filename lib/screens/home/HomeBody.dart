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
        SingleChildScrollView(
          child: SizedBox(
            height: SizeConfig.screenHeight,
            width: SizeConfig.screenWidth,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: const EdgeInsets.all(16),
              children: [
                eventDetails(context),
                conference(context),
                exhibitorProfile(context),
                exhibitorRegistration(context),
                exhibitorList(context),
                floorPlan(context),
                visit(context),
                contact(context),
                const SizedBox(height: 20,)
              ],
            ),
          ),
        )
      ],
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
            const SizedBox(height: 16),
            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/Show.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Event details',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }
  Card conference(BuildContext context) {
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
  }
  Card exhibitorProfile(BuildContext context) {
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
            const SizedBox(height: 16),
            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/Exhibit.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Exhibitor Profile',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }
  Card exhibitorRegistration(BuildContext context) {
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
                  url: 'https://50thdairyindustryconference.com/become-exhibitor')));
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
                child: Image.asset('assets/icons/Registration.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Exhibitor Registration',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 16)
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
          Navigator.pushNamed(context, ExhibitorListScreen.id);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/Exhibitp.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Exhibitor List',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }
  Card floorPlan(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, FloorPlanScreen.id);
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
                child: Image.asset('assets/icons/Floor.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Floor Plan',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }
  Card visit(BuildContext context) {
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
                  url: 'https://zestgroupindia.in/forms/dic_2024/public/')));
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
                child: Image.asset('assets/icons/visit.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Visit',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 16)
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
            const SizedBox(height: 16),


            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/Contact.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Contact',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }
  
}