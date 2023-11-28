import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../constants/constants_screen.dart';

class WebInitiateWebViewPage extends StatefulWidget {
  const WebInitiateWebViewPage({Key? key}) : super(key: key);

  @override
  State<WebInitiateWebViewPage> createState() => _WebInitiateWebViewState();
}

class _WebInitiateWebViewState extends State<WebInitiateWebViewPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Saira')),
      home: Column(
        children: <Widget>[
          Expanded(flex: 1, child: myWebTitleContainer),
          // const Divider(
          //   color: Colors.grey,
          // ),
          Expanded(
              flex: 1,
              child: Container(
                  child: WebViewWidget(
                controller: controller,
              ),
              ),
          )
        ],
      ),
    );
  }
}
