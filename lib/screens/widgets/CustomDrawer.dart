import 'package:inter_food_tech/screens/conference/ConferenceScreen.dart';
import 'package:inter_food_tech/screens/contact/ContactScreen.dart';
import 'package:inter_food_tech/screens/event_details/EventDetailsScreen.dart';
import 'package:inter_food_tech/screens/exhibitor_list/ExhibitorListScreen.dart';
import 'package:inter_food_tech/screens/exhibitor_profile/ExhibitorProfileScreen.dart';
import 'package:inter_food_tech/screens/exhibitor_registration/ExhibitorRegistrationScreen.dart';
import 'package:inter_food_tech/screens/floor_plan/FloorPlanScreen.dart';
import 'package:flutter/material.dart';
import 'package:inter_food_tech/screens/home/HomeScreen.dart';

import '../web_pdf_viewer/PdfViewerScreen.dart';

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
              title: const Text('Exhibitor Login', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    const ExhibitorRegistrationScreen(
                        url: 'https://exhibitormanual.interfoodtech.com/eLogin.aspx')));
              },
            ),
            const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            ListTile(
              title: const Text('Visitor Login', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    const ExhibitorRegistrationScreen(
                        url: 'https://b2b.interfoodtech.com/eLogin')));
              },
            ),
            const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            ListTile(
              title: const Text('Exhibit', style: TextStyle(color: Colors.white)),
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
              title: const Text('Visitor Registration', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    const ExhibitorRegistrationScreen(
                        url: 'https://interfoodtech.com/Visitor-Registration')));
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
                //Navigator.pushNamed(context, ExhibitorListScreen.id);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    const ExhibitorRegistrationScreen(
                        url: 'https://exhibitormanual.interfoodtech.com/ExhibitorList')));
              },
            ),
            const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            ListTile(
              title: const Text('Stall Layout', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    const PdfViewerScreen(
                      url: 'https://interfoodtech.com/Layout.pdf', title: '',)));
              },
            ),
            const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            ListTile(
              title: const Text('Concurrent Event', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                //Navigator.pushNamed(context, FloorPlanScreen.id);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    const ExhibitorRegistrationScreen(
                        url: 'https://interfoodtech.com/seminar')));
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