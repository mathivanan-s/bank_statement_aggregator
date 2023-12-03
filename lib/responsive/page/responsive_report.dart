import 'package:bank_statement_aggregator/responsive/mobile/mobile_bsa_list.dart';
import 'package:bank_statement_aggregator/responsive/web/web_bsa_list.dart';
import 'package:bank_statement_aggregator/responsive/web/web_report_view.dart';
import 'package:flutter/material.dart';

import '../../responsive_layout.dart';

class ResponsiveReport extends StatelessWidget {
  const ResponsiveReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: WebReportViewPage(),
        webScaffold: WebReportViewPage(),
      ),
    );
  }
}
