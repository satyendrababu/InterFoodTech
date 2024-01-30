import 'package:industry_conference/screens/floor_plan/FloorPlanBody.dart';
import 'package:industry_conference/screens/widgets/CustomAppBar.dart';
import 'package:industry_conference/screens/widgets/CustomBottomNavBar.dart';
import 'package:industry_conference/screens/widgets/CustomDrawer.dart';
import 'package:industry_conference/utils/enums.dart';
import 'package:flutter/material.dart';

class FloorPlanScreen extends StatelessWidget {
  static final String id = "floor_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),

      drawer: const CustomDrawer(),

      body: FloorPlanBody(),

      //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.event),
      bottomNavigationBar: CustomBottomNavBar(
          selectedMenu: MenuState.profile),
    );
  }


}