import 'package:inter_food_tech/screens/exhibitor_profile/ExhibitorProfileBody.dart';
import 'package:inter_food_tech/screens/exhibitor_registration/ExhibitorRegistrationBody.dart';
import 'package:inter_food_tech/screens/widgets/CustomAppBar.dart';
import 'package:inter_food_tech/screens/widgets/CustomBottomNavBar.dart';
import 'package:inter_food_tech/screens/widgets/CustomDrawer.dart';
import 'package:inter_food_tech/utils/enums.dart';
import 'package:flutter/material.dart';

class ExhibitorRegistrationScreen extends StatelessWidget {
  //static final String id = "registration_screen";
  final String url;
  const ExhibitorRegistrationScreen({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(),

      drawer: const CustomDrawer(),

      body: ExhibitorRegistrationBody(weblink: url),

      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}