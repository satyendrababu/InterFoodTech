import 'package:dairy_industry_conference/screens/conference/ConferenceScreen.dart';
import 'package:dairy_industry_conference/screens/contact/ContactScreen.dart';
import 'package:dairy_industry_conference/screens/event_details/EventDetailsScreen.dart';
import 'package:dairy_industry_conference/screens/exhibitor_list/ExhibitorListScreen.dart';
import 'package:dairy_industry_conference/screens/exhibitor_profile/ExhibitorProfileScreen.dart';
import 'package:dairy_industry_conference/screens/exhibitor_registration/ExhibitorRegistrationScreen.dart';
import 'package:dairy_industry_conference/screens/floor_plan/FloorPlanScreen.dart';
import 'package:flutter/material.dart';
import 'package:dairy_industry_conference/screens/home/HomeScreen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width * 0.6,// Set the desired height
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
          color: Color(0xff1EA0D6),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: const Text('Home', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                      (Route<dynamic> route) => false);
              },
            ),
            const Divider(
              thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            ListTile(
              title: const Text('Event Details', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, EventDetailsScreen.id);
              },
            ),
            const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            ListTile(
              title: const Text('Exhibitor Registration', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    const ExhibitorRegistrationScreen(
                        url: 'https://50thdairyindustryconference.com/become-exhibitor')));
              },
            ),
            const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            ListTile(
              title: const Text('Exhibitor Profile', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, ExhibitorProfileScreen.id);
              },
            ),
            const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            ListTile(
              title: const Text('Exhibitor List', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, ExhibitorListScreen.id);
              },
            ),
            const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            ListTile(
              title: const Text('Visit', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    const ExhibitorRegistrationScreen(
                        url: 'https://zestgroupindia.in/forms/dic_2024/public/')));
              },
            ),
            const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            ListTile(
              title: const Text('Conference', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, ConferenceScreen.id);
              },
            ),
            const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            ListTile(
              title: const Text('Floor Plan', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, FloorPlanScreen.id);
              },
            ),
            const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            ListTile(
              title: const Text('Contact', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, ContactScreen.id);
              },
            ),
            const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            // Add more drawer items as needed
          ],
        ),
      ),
    );
  }
}