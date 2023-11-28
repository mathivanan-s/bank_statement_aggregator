import 'package:bank_statement_aggregator/constants/constants_screen.dart';
import 'package:flutter/material.dart';

import '../page/responsive_initiate_webview.dart';

class MobileInitiateScreen extends StatefulWidget {
  const MobileInitiateScreen({Key? key}) : super(key: key);

  @override
  State<MobileInitiateScreen> createState() => _MobileInitiateScreenState();
}

class _MobileInitiateScreenState extends State<MobileInitiateScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: myAppBar,
        drawer: myDrawer,
        body: Container(
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
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Expanded(
                    flex: 1,
                    child: Image(image: AssetImage("assets/images/home.gif")),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Welcome to Rapid AI',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: textTitleColor),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 18),
                            const Text(
                              'Instant Bank Statement Analysis\nAnd\nScore Card',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: textSubTitleColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 18),
                            //sub title
                            const Text(
                              'Data Extraction\nFinancial Health Assessment\nCategorisation and Trend Analysis\nAccount Aggregator Enablement',
                              style:
                                  TextStyle(fontSize: 12, color: mytextColor),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 20),

                            SizedBox(
                              height: 40,
                              width: 150,
                              child: TextButton(
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ResponsiveInitiateWebView(),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: primaryColor,
                                    side: const BorderSide(
                                        width: 1, color: secondaryColor),
                                    //border width and color
                                    elevation: 3,
                                    //elevation of button
                                    shape: RoundedRectangleBorder(
                                        //to set border radius to button
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    padding: const EdgeInsets.all(10)),
                                child: const Text(
                                  'Initiate',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontStyle: FontStyle.italic,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
