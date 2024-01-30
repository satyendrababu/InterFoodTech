import 'package:industry_conference/screens/web_pdf_viewer/PdfViewerBody.dart';
import 'package:industry_conference/screens/widgets/CustomAppBar.dart';
import 'package:industry_conference/screens/widgets/CustomBottomNavBar.dart';
import 'package:industry_conference/screens/widgets/CustomDrawer.dart';
import 'package:industry_conference/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';

/*
*   flutter_svg: ^2.0.1
  http: ^1.0.0 #This is used for the API call
  provider: ^6.0.0
  image_picker: ^1.0.4
  shared_preferences: ^2.2.2
  webview_flutter: ^3.0.0
  flutter_pdfview: ^1.0.4
  syncfusion_flutter_pdfviewer: ^24.1.44
  google_maps_flutter: ^2.0.10
  url_launcher: ^6.0.14
  flutter_file_downloader: ^1.2.1
  * */


class PdfViewerScreen extends StatefulWidget {
  final String url;
  final String title;

  const PdfViewerScreen({super.key, required this.url, required this.title});

  @override
  State<PdfViewerScreen> createState() => _PdfViewerScreenState();
}

class _PdfViewerScreenState extends State<PdfViewerScreen> {
  double? _progress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: const CustomDrawer(),
      body: PdfViewerBody(
        pdfUrl: widget.url,
        title: widget.title,
      ),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.profile),
      floatingActionButton: _progress != null? const CircularProgressIndicator() : FloatingActionButton(
          backgroundColor: Color(0xffE3F3FF),
        onPressed: () async {
          //downloadAndSaveImage(context);
          FileDownloader.downloadFile(
              url: widget.url,
              onProgress: (name, progress) {
                setState(() {
                  _progress = progress;
                });
              },
              onDownloadCompleted: (value) {
                print('kya path : $value');
                setState(() {
                  _progress = null;
                });
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("File saved to download folder!"),
                ));
              });
        },
        child: const Icon(Icons.download),
      ),
    );
  }
}
