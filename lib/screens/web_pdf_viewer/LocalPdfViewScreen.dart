import 'package:industry_conference/screens/web_pdf_viewer/LocalPdfViewBody.dart';
import 'package:industry_conference/screens/widgets/CustomAppBar.dart';
import 'package:industry_conference/screens/widgets/CustomBottomNavBar.dart';
import 'package:industry_conference/screens/widgets/CustomDrawer.dart';
import 'package:industry_conference/utils/enums.dart';
import 'package:flutter/material.dart';

class LocalPdfViewScreen extends StatelessWidget {

  final String url;

  const LocalPdfViewScreen({super.key, required this.url});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(),

      drawer: const CustomDrawer(),

      body: LocalPdfViewBody(),

      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.profile),

      floatingActionButton: FloatingActionButton(
        onPressed: () async{

        },
        child: const Icon(Icons.download),
      ),
    );
  }


}