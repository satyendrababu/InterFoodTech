import 'package:industry_conference/screens/event_details/EventDetailsBody.dart';
import 'package:industry_conference/screens/widgets/CustomAppBar.dart';
import 'package:industry_conference/screens/widgets/CustomBottomNavBar.dart';
import 'package:industry_conference/screens/widgets/CustomDrawer.dart';
import 'package:industry_conference/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EventDetailsScreen extends StatelessWidget {
  static final String id = "event_screen";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(),
      /*appBar: AppBar(
        leading: Builder(
          builder: (BuildContext buildContext) {
            return IconButton(
              icon: Image.asset(
                'assets/icons/menu-icon.png', // Your custom drawer icon path
                height: 24, // Adjust the height as needed
              ),
              onPressed: () {
                Scaffold.of(buildContext).openDrawer(); // Open the drawer
              },
            );
          },
        ),
        title: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/banner.png',
                height: 50,
              ),
              SizedBox(height: 8,)
            ],
          ),
        ),
        actions: [
          GestureDetector(
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/back.png',
                  height: 18,
                ),
                const SizedBox(width: 2,),
                const Text(
                  'Back',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(width: 8,),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),*/

      drawer: const CustomDrawer(),

      body: EventDetailsBody(),

      //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.event),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.event),
    );
  }
  
  
}