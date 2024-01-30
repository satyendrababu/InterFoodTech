
import 'package:industry_conference/screens/web_pdf_viewer/WebViewFaceBookBody.dart';
import 'package:industry_conference/screens/widgets/CustomAppBar.dart';
import 'package:industry_conference/screens/widgets/CustomBottomNavBar.dart';
import 'package:industry_conference/screens/widgets/CustomDrawer.dart';
import 'package:industry_conference/utils/enums.dart';
import 'package:flutter/material.dart';

class WebViewFacebookScreen extends StatelessWidget {
  //static final String id = "registration_screen";
  final String url;
  const WebViewFacebookScreen({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(),

      drawer: const CustomDrawer(),

      body: WebViewFaceBookBody(weblink: url),

      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}