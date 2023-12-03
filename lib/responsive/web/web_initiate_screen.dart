import 'dart:async';
import 'dart:typed_data';

import 'package:bank_statement_aggregator/constants/constants_screen.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../model/UserModel.dart';
import '../../retrofit/api_service.dart';

class WebInitiateScreen extends StatefulWidget {
  const WebInitiateScreen({Key? key}) : super(key: key);

  @override
  State<WebInitiateScreen> createState() => _WebInitiateScreenState();
}

class _WebInitiateScreenState extends State<WebInitiateScreen> {
  final Uri url = Uri(
    scheme: 'https',
    host: 'demo.perfios.com',
    path: 'KuberaVault/insights/gl/88ef0856-1a75-4994-9f60-6eb150b926ce',
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Saira')),
      home: const Column(
        children: <Widget>[Expanded(child: callApiFutureBuilder())],
      ),
    );
  }

// void callInitiate() async {
//   setState(() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => const WebBSAListPage(),
//       ),
//     );
//   });
// }
}

class callApiFutureBuilder extends StatelessWidget {
  const callApiFutureBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final apiService =
        ApiService(Dio(BaseOptions(contentType: "application/json")));

    return FutureBuilder(
        future: apiService.fetchBSAModel("2"),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final UserModel userModel = snapshot.data!;
            return Center(
              child: SetData(
                userModel: userModel,
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}

class SetData extends StatefulWidget {
  final UserModel userModel;

  const SetData({super.key, required this.userModel});

  @override
  State<SetData> createState() => _SetDataState();
}

class _SetDataState extends State<SetData> {
  final Uri url = Uri(
    scheme: 'https',
    host: 'demo.perfios.com',
    path: 'KuberaVault/insights/gl/88ef0856-1a75-4994-9f60-6eb150b926ce',
  );

  double findProgress = 0.0;

  void simulateProgress() {
    const totalSteps = 5; // Number of steps
    const stepDuration =
        Duration(microseconds: 500000); // Duration for each step

    for (int step = 1; step <= totalSteps; step++) {
      Timer(stepDuration * step, () {
        setState(() {
          findProgress = step / totalSteps;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
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
            child: Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: Image(image: AssetImage("assets/images/home.gif")),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const Text(
                        'Welcome to Rapid AI',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: textTitleColor,
                            decoration: TextDecoration.none),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'Instant Bank Statement Analysis And Score Card',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: mytextColor,
                            decoration: TextDecoration.none),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 15),
                      //sub title
                      const Text(
                        'Data Extraction | Financial Health Assessment\nCategorisation and Trend Analysis | Account Aggregator Enablement',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: mytextColor,
                            decoration: TextDecoration.none),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 15),
                      //application view
                      Card(
                        elevation: 2,
                        color: Colors.white,
                        margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Appliction Id :",
                                          style: myCardTitleTextStyle,
                                        ),
                                        const Text(
                                          'PL2023000001',
                                          style: TextStyle(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        // const Divider(thickness: 3, color: Colors.blue),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 25,
                                          width: 100,
                                          child: const Text(
                                            'Not Initiated',
                                            style:
                                                TextStyle(color: Colors.orange),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: _pickFile,
                        child: const Text('Upload Your Bank Statement Files'),
                      ),
                      const SizedBox(height: 15),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: fileNames.length,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 2,
                            color: Colors.white,
                            margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          fileNames[index],
                                          style: myCardTitleTextStyle,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            fileNames.removeAt(index);
                                            if (fileNames.isEmpty) {
                                              proceedBtn = false;
                                            }
                                          });
                                        },
                                        child: const Icon(
                                          Icons.delete_sweep,
                                          size: 20.0,
                                          color: Colors.orange,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: LinearProgressIndicator(
                                          value: findProgress,
                                          backgroundColor: Colors.grey.shade300,
                                          // Background color of the progress bar
                                          valueColor: const AlwaysStoppedAnimation<
                                                  Color>(
                                              Colors
                                                  .green), // Color of the progress indicator
                                        ),
                                      ),
                                      Text(
                                        '${(findProgress * 100).toStringAsFixed(0)}%', // Display percentage
                                        style: myContentTextStyle,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            // Add any other details you want to display here
                          );
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Visibility(
                        visible: proceedBtn,
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () => launchURL(url),
                              child: const Text('Proceed'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _filePath = '';
  String _fileName = '';
  bool proceedBtn = false;
  List<String> fileNames = [];

  Future<void> _pickFile() async {
    fileNames = [];
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom, allowedExtensions: ['pdf'], allowMultiple: true);
    if (result != null) {
      if (result.files.isNotEmpty) {
        PlatformFile file = result.files.first;
        if (file.bytes != null) {
          setState(() {
            List<PlatformFile> files = result.files;
            for (PlatformFile file in files) {
              fileNames.add(file.name);
              simulateProgress();
              _fileName += '\n';
              _fileName += file.name;
              proceedBtn = true;
            }
          });
          Uint8List fileBytes = file.bytes!;
          print('File Bytes: $fileBytes');
        } else {
          setState(() {
            List<PlatformFile> files = result.files;
            for (PlatformFile file in files) {
              fileNames.add(file.name);
              simulateProgress();
              _fileName += '\n';
              _fileName += file.name;
              proceedBtn = true;
            }
            _filePath = result.files.single.path!;
          });
        }
      } else {
        print('files not available');
      }
    } else {
      print('result not available');
    }
  }
}

Future<void> launchURL(Uri url) async {
  // Check if the URL can be launched
  if (!await launchUrl(
    url,
    mode: LaunchMode.inAppWebView,
    webViewConfiguration: const WebViewConfiguration(
        enableDomStorage: true, enableJavaScript: true),
  )) {
    throw Exception('Could not launch $url');
  }
}
