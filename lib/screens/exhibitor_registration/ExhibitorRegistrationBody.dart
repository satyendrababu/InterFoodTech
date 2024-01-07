import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ExhibitorRegistrationBody extends StatefulWidget {
  final String weblink;
  const ExhibitorRegistrationBody({super.key, required this.weblink});

  @override
  State<ExhibitorRegistrationBody> createState() => _ExhibitorRegistrationBodyState();
}

class _ExhibitorRegistrationBodyState extends State<ExhibitorRegistrationBody> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebView(
          initialUrl: widget.weblink, // Set the URL of the webpage
          javascriptMode: JavascriptMode.unrestricted, // Enable JavaScript
          onWebViewCreated: (WebViewController controller) {
            _controller.complete(controller);
          },
          onPageFinished: (String url) {
            // Page has finished loading, update the state to hide the loader
            setState(() {
              _isLoading = false;
            });
          },
        ),
        if (_isLoading)
          Center(
            child: CircularProgressIndicator(),
          ),
      ],
    );
    /*return WebView(
      initialUrl: 'https://50thdairyindustryconference.com/become-exhibitor',
      javascriptMode: JavascriptMode.unrestricted,
    );*/
  }
}