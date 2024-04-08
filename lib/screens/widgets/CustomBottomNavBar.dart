import 'package:inter_food_tech/screens/contact/ContactScreen.dart';
import 'package:inter_food_tech/screens/event_details/EventDetailsScreen.dart';
import 'package:inter_food_tech/screens/exhibitor_list/ExhibitorListScreen.dart';
import 'package:inter_food_tech/screens/venue/VenueScreen.dart';
import 'package:inter_food_tech/screens/widgets/BottomMenuItem.dart';
import 'package:inter_food_tech/utils/enums.dart';
import 'package:flutter/material.dart';

import '../exhibitor_registration/ExhibitorRegistrationScreen.dart';
import '../web_pdf_viewer/PdfViewerScreen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              child: MenuState.home == selectedMenu
                  ? BottomMenuItem(
                      iconPath: 'assets/icons/home_food.png', label: 'Home', textColor: const Color(0xff272974))
                  : BottomMenuItem(
                      iconPath: 'assets/icons/home_food.png', label: 'Home', textColor: const Color(0xff272974)),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            GestureDetector(
              child: MenuState.event == selectedMenu
                  ? BottomMenuItem(
                  iconPath: 'assets/icons/exhibitor_food.png', label: 'ExList', textColor: const Color(0xff272974))
                  : BottomMenuItem(
                  iconPath: 'assets/icons/exhibitor_food.png', label: 'ExList', textColor: const Color(0xff272974)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    const ExhibitorRegistrationScreen(
                        url: 'https://exhibitormanual.interfoodtech.com/ExhibitorList')));

              },
            ),
            GestureDetector(
              child: MenuState.exhibition == selectedMenu
                  ? BottomMenuItem(
                  iconPath: 'assets/icons/floor_food.png', label: 'Stall', textColor: const Color(0xff272974))
                  : BottomMenuItem(
                  iconPath: 'assets/icons/floor_food.png', label: 'Stall', textColor: const Color(0xff272974)),
              onTap: () {
                /*Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ExhibitorListScreen()));*/
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    const PdfViewerScreen(
                      url: 'https://interfoodtech.com/Layout.pdf', title: '',)));
              },
            ),
            GestureDetector(
              child: MenuState.venue == selectedMenu
                  ? BottomMenuItem(
                  iconPath: 'assets/icons/seminars_food.png', label: 'Con Event', textColor: const Color(0xff272974))
                  : BottomMenuItem(
                  iconPath: 'assets/icons/seminars_food.png', label: 'Con Event', textColor: const Color(0xff272974)),
              onTap: () {
                /*Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => VenueScreen()));*/
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    const ExhibitorRegistrationScreen(
                        url: 'https://interfoodtech.com/seminar')));
              },
            ),
            GestureDetector(
              child: MenuState.contact == selectedMenu
                  ? BottomMenuItem(
                  iconPath: 'assets/icons/visit_food.png', label: 'Visitor Reg', textColor: const Color(0xff272974))
                  : BottomMenuItem(
                  iconPath: 'assets/icons/visit_food.png', label: 'Visitor Reg', textColor: const Color(0xff272974)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    const ExhibitorRegistrationScreen(
                        url: 'https://interfoodtech.com/Visitor-Registration')));
              },
            ),
          ],
        ),
      ),
    );
  }
}
