import 'package:bank_statement_aggregator/responsive/mobile/mobile_bsa_list.dart';
import 'package:bank_statement_aggregator/responsive/web/web_bsa_list.dart';
import 'package:flutter/material.dart';

import '../../responsive_layout.dart';
import '../mobile/mobile_initiate_webview.dart';
import '../web/web_initiate_webview.dart';

class ResponsiveInitiateWebView extends StatelessWidget {
  const ResponsiveInitiateWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileInitiateWebViewPage(),
        webScaffold: WebInitiateWebViewPage(),
      ),
    );
  }
}
