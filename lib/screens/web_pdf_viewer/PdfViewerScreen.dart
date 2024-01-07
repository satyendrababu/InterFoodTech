import 'package:dairy_industry_conference/screens/web_pdf_viewer/PdfViewerBody.dart';
import 'package:dairy_industry_conference/screens/widgets/CustomAppBar.dart';
import 'package:dairy_industry_conference/screens/widgets/CustomBottomNavBar.dart';
import 'package:dairy_industry_conference/screens/widgets/CustomDrawer.dart';
import 'package:dairy_industry_conference/utils/enums.dart';
import 'package:flutter/material.dart';

class PdfViewerScreen extends StatelessWidget {

  final String url;
  final String title;

  const PdfViewerScreen({super.key, required this.url, required this.title});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(),

      drawer: const CustomDrawer(),

      body: PdfViewerBody(pdfUrl: url, title: title,),

      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }

}