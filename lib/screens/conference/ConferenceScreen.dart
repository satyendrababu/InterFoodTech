
import 'package:dairy_industry_conference/screens/conference/ConferenceBody.dart';
import 'package:dairy_industry_conference/screens/widgets/CustomAppBar.dart';
import 'package:dairy_industry_conference/screens/widgets/CustomBottomNavBar.dart';
import 'package:dairy_industry_conference/screens/widgets/CustomDrawer.dart';
import 'package:dairy_industry_conference/utils/enums.dart';
import 'package:flutter/material.dart';

class ConferenceScreen extends StatelessWidget {
  static final String id = "conference_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(),

      drawer: const CustomDrawer(),

      body: ConferenceBody(),

      bottomNavigationBar: const CustomBottomNavBar(
          selectedMenu: MenuState.profile),
    );
  }

}