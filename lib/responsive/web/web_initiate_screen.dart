import 'package:bank_statement_aggregator/constants/constants_screen.dart';
import 'package:bank_statement_aggregator/responsive/web/web_bsa_list.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebInitiateScreen extends StatefulWidget {
  const WebInitiateScreen({Key? key}) : super(key: key);

  @override
  State<WebInitiateScreen> createState() => _WebInitiateScreenState();
}

class _WebInitiateScreenState extends State<WebInitiateScreen> {
  final Uri url =
  Uri(scheme: 'https', host: 'demo.perfios.com',path: 'KuberaVault/insights/gl/88ef0856-1a75-4994-9f60-6eb150b926ce',);
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: MaterialApp(
        theme: ThemeData(
            textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Saira')),
        home: Column(
          children: <Widget>[
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
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'images/home.gif',
                            // fit: BoxFit.fill,
                          ),
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
                                      fontFamily: 'Saira',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        color: textTitleColor,
                                        decoration: TextDecoration.none),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Instant Bank Statement Analysis\nAnd\nScore Card',
                                    style: TextStyle(
                                        fontFamily: 'Saira',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: textSubTitleColor,
                                        decoration: TextDecoration.none),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 5),
                                  //sub title
                                  const Text(
                                    'Data Extraction\nFinancial Health Assessment\nCategorisation and Trend Analysis\nAccount Aggregator Enablement',
                                    style: TextStyle(
                                        fontFamily: 'Saira',
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                        color: mytextColor,
                                        decoration: TextDecoration.none),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    width: 400,
                                      margin: EdgeInsets.all(5),
                                      padding: const EdgeInsets.all(5.0),
                                      child:  Card(
                                        elevation: 2,
                                        shadowColor: Colors.grey.shade50,
                                        color: Colors.white,
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
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    height: 40,
                                    width: 150,
                                    child: TextButton(
                                      onPressed: () => launchURL(url),
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
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> launchURL(Uri url) async {
    // Check if the URL can be launched
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableDomStorage: true,enableJavaScript: true),
    )){
      throw Exception('Could not launch $url');
    }
  }


  void callInitiate() async {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const WebBSAListPage(),
        ),
      );
    });
  }
}
