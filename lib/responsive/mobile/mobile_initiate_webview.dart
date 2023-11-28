import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
        body: Container(
          child: WebViewWidget(

            controller: controller,
          ),
        ),
      ),
    );
  }
}


