import 'dart:convert';
import 'dart:io' show Platform;

import 'package:bank_statement_aggregator/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../../constants/constants_screen.dart';

class MobileInitiateWebViewPage extends StatefulWidget {
  const MobileInitiateWebViewPage({Key? key}) : super(key: key);

  @override
  State<MobileInitiateWebViewPage> createState() =>
      _MobileInitiateWebViewState();
}

class _MobileInitiateWebViewState extends State<MobileInitiateWebViewPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Saira')),
      home: Scaffold(
        appBar: myAppBar,
        drawer: myDrawer,
        body: WebViewExample(),
      ),
    );
  }
}

class WebViewExample extends StatefulWidget {
  @override
  _WebViewExampleState createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebViewExample> {
  InAppWebViewController? _webViewController;

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      initialUrlRequest: URLRequest(
          url: Uri.parse(
              'https://demo.perfios.com//KuberaVault/insights/gl/88ef0856-1a75-4994-9f60-6eb150b926ce')),
      initialOptions: InAppWebViewGroupOptions(
        crossPlatform: InAppWebViewOptions(
          javaScriptEnabled: true,
          allowFileAccessFromFileURLs: true,
        ),
      ),
      onWebViewCreated: (controller) {

      },
      onLoadStart: (controller, url) {
        if (url.toString().startsWith('https://usfb-rapid-sit.unitybank.co.in/')) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => MyApp(),
            ),
          );
        }
      },
      onLoadStop: (controller, url) {
        // Handle page load stop
      },
    );
  }


}
