import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget webScaffold;


  const ResponsiveLayout(
      {Key? key, required this.mobileScaffold,
      required this.webScaffold}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
         if (constraints.maxWidth < 900) {
          return mobileScaffold;
        } else {
          return webScaffold;
        }
      },
    );
  }
}
