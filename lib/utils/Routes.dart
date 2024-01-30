
import 'package:industry_conference/screens/conference/ConferenceScreen.dart';
import 'package:industry_conference/screens/contact/ContactScreen.dart';
import 'package:industry_conference/screens/details/DetailsScreen.dart';
import 'package:industry_conference/screens/event_details/EventDetailsScreen.dart';
import 'package:industry_conference/screens/exhibitor_list/ExhibitorListScreen.dart';
import 'package:industry_conference/screens/exhibitor_profile/ExhibitorProfileScreen.dart';
import 'package:industry_conference/screens/exhibitor_registration/ExhibitorRegistrationScreen.dart';
import 'package:industry_conference/screens/floor_plan/FloorPlanScreen.dart';
import 'package:industry_conference/screens/home/HomeScreen.dart';
import 'package:industry_conference/screens/splash/SplashScreen.dart';
import 'package:industry_conference/screens/venue/VenueScreen.dart';
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