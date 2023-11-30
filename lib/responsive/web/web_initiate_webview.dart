//
// import 'dart:html' if (dart.library.html) 'dart:html';
// import 'package:flutter/material.dart';
// import 'dart:ui' as ui;
//
// class WebInitiateWebViewPage extends StatefulWidget {
//   const WebInitiateWebViewPage({Key? key}) : super(key: key);
//   @override
//   State<WebInitiateWebViewPage> createState() => _WebInitiateWebViewState();
// }
//
// class _WebInitiateWebViewState extends State<WebInitiateWebViewPage> {
//   final IFrameElement iFrameElement = IFrameElement();
//
//   @override
//   void initState() {
//     iFrameElement.style.height = '50%';
//     iFrameElement.style.width = '50%';
//     iFrameElement.src =
//         'https://demo.perfios.com//KuberaVault/insights/gl/88ef0856-1a75-4994-9f60-6eb150b926ce';
//     iFrameElement.style.border = 'none';
//
//     //ignore: undefined_prefixed_name
//     ui.platformViewRegistry
//         .registerViewFactory('iFrameElement', (int ViewId) => iFrameElement);
//
//     super.initState();
//   }
//
//   final Widget _iframeWidget = HtmlElementView(
//     viewType: 'iFrameElement',
//     key: UniqueKey(),
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(
//             height: screenHeight ,
//             width: screenWidth,
//             child: _iframeWidget,
//           )
//         ],
//       ),
//     );
//   }
//
// }

import 'package:flutter/material.dart';

class WebInitiateWebViewPage extends StatefulWidget {
  const WebInitiateWebViewPage({Key? key}) : super(key: key);

  @override
  State<WebInitiateWebViewPage> createState() => _WebInitiateWebViewPageState();
}

class _WebInitiateWebViewPageState extends State<WebInitiateWebViewPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

