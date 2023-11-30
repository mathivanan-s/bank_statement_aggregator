import 'package:bank_statement_aggregator/responsive/mobile/mobile_initiate_screen.dart';
import 'package:bank_statement_aggregator/responsive_layout.dart';
import 'package:bank_statement_aggregator/responsive/web/web_initiate_screen.dart';
import 'package:flutter/material.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileInitiateScreen(),
        webScaffold: WebInitiateScreen(),
      ),
    );
  }
}
