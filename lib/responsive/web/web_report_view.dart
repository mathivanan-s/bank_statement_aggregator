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

import '../../constants/constants_screen.dart';

class WebReportViewPage extends StatefulWidget {
  const WebReportViewPage({Key? key}) : super(key: key);

  @override
  State<WebReportViewPage> createState() => _WebReportViewPageState();
}

class _WebReportViewPageState extends State<WebReportViewPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Saira')),
      home: Column(
        children: [
          Expanded(flex: 1, child: myWebTitleContainer),
          Expanded(
              flex: 6,
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ]),
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: 100,
                              height: 80,
                              child: Card(
                                elevation: 2,
                                shadowColor: Colors.grey.shade50,
                                color: Colors.grey.shade100,
                                margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              padding: EdgeInsets.all(10),
                                              height: 50,
                                              width: 50,
                                              child: Image(
                                                  image: AssetImage(
                                                      "assets/images/inflow.png")),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Total Credit",
                                                      style: myTitleTextStyle,
                                                    ),
                                                    Text(
                                                      "\u{20B9} 1,24,345",
                                                      style: myContentTextStyle,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: const Text(
                                                  '3.45%',
                                                  style: TextStyle(
                                                      color: Colors.purple),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: 100,
                              height: 80,
                              child: Card(
                                elevation: 2,
                                shadowColor: Colors.grey.shade50,
                                color: Colors.grey.shade100,
                                margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              padding: EdgeInsets.all(10),
                                              height: 50,
                                              width: 50,
                                              child: Image(
                                                  image: AssetImage(
                                                      "assets/images/outflow.png")),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Total Debit",
                                                      style: myTitleTextStyle,
                                                    ),
                                                    Text(
                                                      "\u{20B9} 84,045",
                                                      style: myContentTextStyle,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: const Text(
                                                  '3.45%',
                                                  style: TextStyle(
                                                      color: Colors.purple),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: 100,
                              height: 80,
                              child: Card(
                                elevation: 2,
                                shadowColor: Colors.grey.shade50,
                                color: Colors.grey.shade100,
                                margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              padding: EdgeInsets.all(10),
                                              height: 50,
                                              width: 50,
                                              child: Image(
                                                  image: AssetImage(
                                                      "assets/images/average.png")),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "ABB",
                                                      style: myTitleTextStyle,
                                                    ),
                                                    Text(
                                                      "\u{20B9} 24,345",
                                                      style: myContentTextStyle,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: const Text(
                                                  '3.45%',
                                                  style: TextStyle(
                                                      color: Colors.purple),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: 100,
                              height: 80,
                              child: Card(
                                elevation: 2,
                                shadowColor: Colors.grey.shade50,
                                color: Colors.grey.shade100,
                                margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              padding: EdgeInsets.all(10),
                                              height: 50,
                                              width: 50,
                                              child: Image(
                                                  image: AssetImage(
                                                      "assets/images/loan.png")),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Total EMI',
                                                      style: myTitleTextStyle,
                                                    ),
                                                    Text(
                                                      '\u{20B9} 1,24,345',
                                                      style: myContentTextStyle,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: const Text(
                                                  '3.45%',
                                                  style: TextStyle(
                                                      color: Colors.purple),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: 100,
                              height: 80,
                              child: Card(
                                elevation: 2,
                                shadowColor: Colors.grey.shade50,
                                color: Colors.grey.shade100,
                                margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              padding: EdgeInsets.all(10),
                                              height: 50,
                                              width: 50,
                                              child: Image(
                                                  image: AssetImage(
                                                      "assets/images/inflow.png")),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Total Credit",
                                                      style: myTitleTextStyle,
                                                    ),
                                                    Text(
                                                      "\u{20B9} 1,24,345",
                                                      style: myContentTextStyle,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: const Text(
                                                  '3.45%',
                                                  style: TextStyle(
                                                      color: Colors.purple),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: 100,
                              height: 80,
                              child: Card(
                                elevation: 2,
                                shadowColor: Colors.grey.shade50,
                                color: Colors.grey.shade100,
                                margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              padding: EdgeInsets.all(10),
                                              height: 50,
                                              width: 50,
                                              child: Image(
                                                  image: AssetImage(
                                                      "assets/images/outflow.png")),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Total Debit",
                                                      style: myTitleTextStyle,
                                                    ),
                                                    Text(
                                                      "\u{20B9} 84,045",
                                                      style: myContentTextStyle,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: const Text(
                                                  '3.45%',
                                                  style: TextStyle(
                                                      color: Colors.purple),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: 100,
                              height: 80,
                              child: Card(
                                elevation: 2,
                                shadowColor: Colors.grey.shade50,
                                color: Colors.grey.shade100,
                                margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              padding: EdgeInsets.all(10),
                                              height: 50,
                                              width: 50,
                                              child: Image(
                                                  image: AssetImage(
                                                      "assets/images/average.png")),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "ABB",
                                                      style: myTitleTextStyle,
                                                    ),
                                                    Text(
                                                      "\u{20B9} 24,345",
                                                      style: myContentTextStyle,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: const Text(
                                                  '3.45%',
                                                  style: TextStyle(
                                                      color: Colors.purple),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: 100,
                              height: 80,
                              child: Card(
                                elevation: 2,
                                shadowColor: Colors.grey.shade50,
                                color: Colors.grey.shade100,
                                margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              padding: EdgeInsets.all(10),
                                              height: 50,
                                              width: 50,
                                              child: Image(
                                                  image: AssetImage(
                                                      "assets/images/loan.png")),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Total EMI',
                                                      style: myTitleTextStyle,
                                                    ),
                                                    Text(
                                                      '\u{20B9} 1,24,345',
                                                      style: myContentTextStyle,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: const Text(
                                                  '3.45%',
                                                  style: TextStyle(
                                                      color: Colors.purple),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
