import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (BuildContext buildContext) {
          return IconButton(
            icon: Image.asset(
              'assets/icons/menu_icon_food.png', // Your custom drawer icon path
              height: 20, // Adjust the height as needed
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
              const SizedBox(width: 16,),
            ],
          ),
          onTap: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}