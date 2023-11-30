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
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Saira')),
      home: Scaffold(
        appBar: myAppBar,
        drawer: myDrawer,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 700,
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 250,
                              width: 250,
                              child: Image(image: AssetImage("assets/images/home.gif")),
                            ),
                            const Text(
                              'Welcome to Rapid AI',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: textTitleColor),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Instant Bank Statement Analysis\nAnd\nScore Card',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: textSubTitleColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 5),
                            //sub title
                            const Text(
                              'Data Extraction\nFinancial Health Assessment\nCategorisation and Trend Analysis\nAccount Aggregator Enablement',
                              style:
                                  TextStyle(fontSize: 12, color: mytextColor),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            //application view
                            Container(
                                margin: EdgeInsets.all(5),
                                padding: const EdgeInsets.all(5.0),
                                child:  Card(
                                  elevation: 15,
                                  shadowColor: Colors.grey.shade200,
                                  color: Colors.grey.shade100,
                                  margin: const EdgeInsets.fromLTRB(10,5,10,5),
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Appliction Id :",
                                                    style: myCardTitleTextStyle,
                                                  ),
                                                  Text(
                                                    'PL2023000001',
                                                    style: const TextStyle(
                                                        color: textTitleColor,
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 16,
                                                        decoration: TextDecoration.none),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  // const Divider(thickness: 3, color: Colors.blue),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    height: 25,
                                                    width: 100,
                                                    child: const Text(
                                                      'Not Initiated',
                                                      style: TextStyle(color: Colors.orange),
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          height: 2,
                                          color: Colors.grey.shade400,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Customer Ref No :",
                                                    style: myCardTitleTextStyle,
                                                  ),
                                                  Text(
                                                    "100001",
                                                    style: myContentTextStyle,
                                                  ),
                                                  Text(
                                                    "Customer Name :",
                                                    style: myCardTitleTextStyle,
                                                  ),
                                                  Text(
                                                    "Mathivanan S",
                                                    style: myContentTextStyle,
                                                  ),

                                                ],
                                              ),
                                            ),
                                            //-------------------------------------------------------
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                            ),
                            const SizedBox(height: 30,),
                            Visibility(
                              visible: true,
                              child: SizedBox(
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
                                        fontSize: 14,
                                        fontStyle: FontStyle.italic,
                                        decoration: TextDecoration.none),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
