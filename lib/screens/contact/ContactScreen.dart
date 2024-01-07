import 'package:dairy_industry_conference/screens/contact/ContactBody.dart';
import 'package:dairy_industry_conference/screens/widgets/CustomAppBar.dart';
import 'package:dairy_industry_conference/screens/widgets/CustomBottomNavBar.dart';
import 'package:dairy_industry_conference/screens/widgets/CustomDrawer.dart';
import 'package:dairy_industry_conference/utils/enums.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  static final String id = "contact_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: const Center(
          child: Column(
            children: [

              SizedBox(height: 60,)
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
      appBar: CustomAppBar(),

      drawer: const CustomDrawer(),

      body: ContactBody(),

      //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.event),
      bottomNavigationBar: CustomBottomNavBar(
          selectedMenu: MenuState.contact),
    );
  }


}