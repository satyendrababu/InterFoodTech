import 'package:dairy_industry_conference/screens/web_pdf_viewer/LocalImageViewBody.dart';
import 'package:dairy_industry_conference/screens/widgets/CustomAppBar.dart';
import 'package:dairy_industry_conference/screens/widgets/CustomBottomNavBar.dart';
import 'package:dairy_industry_conference/screens/widgets/CustomDrawer.dart';
import 'package:dairy_industry_conference/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';

class LocalImageViewScreen extends StatefulWidget {

  const LocalImageViewScreen({super.key});

  @override
  State<LocalImageViewScreen> createState() => _LocalImageViewScreenState();
}

class _LocalImageViewScreenState extends State<LocalImageViewScreen> {
  double? _progress;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(),

      drawer: const CustomDrawer(),

      body: LocalImageViewBody(),

      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.profile),

      floatingActionButton: _progress != null? const CircularProgressIndicator() : FloatingActionButton(

        backgroundColor: Color(0xffE3F3FF),
        onPressed: () async {
          //downloadAndSaveImage(context);
          FileDownloader.downloadFile(
              url: 'https://50thdairyindustryconference.com/WebApp/HITEX_Master_Layout.png',
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

  /*Future<void> downloadAndSaveImage(BuildContext context) async {
    // Specify the image asset path
    String assetPath = 'assets/images/master_layout.png';

    // Load the image bytes from the asset
    ByteData data = await rootBundle.load(assetPath);
    List<int> bytes = data.buffer.asUint8List();

    // Get the directory for storing downloaded images
    //String savePath = await _getLocalAppDocumentsPath();
    var dir = Directory("/storage/emulated/0/Download");

    String fullPath = "${dir.path}/master_layout.png";


    // Write the bytes to a file
    await File(fullPath).writeAsBytes(bytes, flush: true);

    print('Image saved to: $fullPath');
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("File saved to download folder!"),
    ));
  }*/
}