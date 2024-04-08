import 'package:flutter/material.dart';

class RoundedAppBar extends StatelessWidget {

  const RoundedAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0, // Adjust the height as needed
      decoration: const BoxDecoration(
        color: Colors.white, // Customize the background color
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0), // Adjust the border radius as needed
          bottomRight: Radius.circular(20.0), // Adjust the border radius as needed
        ),
      ),
      child: AppBar(
        automaticallyImplyLeading: false,
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
          child: Image.asset(
            'assets/images/banner.png',
            height: 50,
          ),
        ),
        backgroundColor: Colors.transparent, // Make the AppBar transparent
        elevation: 0, // Remove AppBar shadow
      ),
    );
  }
}