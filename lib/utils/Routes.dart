
import 'package:inter_food_tech/screens/conference/ConferenceScreen.dart';
import 'package:inter_food_tech/screens/contact/ContactScreen.dart';
import 'package:inter_food_tech/screens/details/DetailsScreen.dart';
import 'package:inter_food_tech/screens/event_details/EventDetailsScreen.dart';
import 'package:inter_food_tech/screens/exhibitor_list/ExhibitorListScreen.dart';
import 'package:inter_food_tech/screens/exhibitor_profile/ExhibitorProfileScreen.dart';
import 'package:inter_food_tech/screens/exhibitor_registration/ExhibitorRegistrationScreen.dart';
import 'package:inter_food_tech/screens/floor_plan/FloorPlanScreen.dart';
import 'package:inter_food_tech/screens/home/HomeScreen.dart';
import 'package:inter_food_tech/screens/splash/SplashScreen.dart';
import 'package:inter_food_tech/screens/venue/VenueScreen.dart';
import 'package:flutter/material.dart';


final Map<String, WidgetBuilder> routes = {
  SplashScreen.id : (context) => SplashScreen(),
  HomeScreen.id : (context) => HomeScreen(),
  DetailsScreen.id : (context) => DetailsScreen(),
  EventDetailsScreen.id : (context) => EventDetailsScreen(),
  ExhibitorProfileScreen.id : (context) => ExhibitorProfileScreen(),
  ExhibitorListScreen.id : (context) => ExhibitorListScreen(),
  ContactScreen.id : (context) => ContactScreen(),
  FloorPlanScreen.id : (context) => FloorPlanScreen(),
  VenueScreen.id : (context) => VenueScreen(),
  ConferenceScreen.id : (context) => ConferenceScreen(),

};