import 'package:bank_statement_aggregator/constants/constants_screen.dart';
import 'package:bank_statement_aggregator/model/UserModel.dart';
import 'package:bank_statement_aggregator/retrofit/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class WebBSAListPage extends StatefulWidget {
  const WebBSAListPage({Key? key}) : super(key: key);

  @override
  State<WebBSAListPage> createState() => _WebBSAListPageState();
}

class _WebBSAListPageState extends State<WebBSAListPage> {
  @override
  Widget build(BuildContext context) {
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
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          'images/home.gif',
                          // fit: BoxFit.fill,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: callApiFutureBuilder(),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  FutureBuilder callApiFutureBuilder() {
    final apiService =
        ApiService(Dio(BaseOptions(contentType: "application/json")));
    return FutureBuilder(
        future: apiService.fetchBSAModel("2"),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final UserModel userModel = snapshot.data!;
            return setData(userModel);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Widget setData(UserModel userModel) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 8.0, // Spacing between columns
          mainAxisSpacing: 8.0, // Spacing between rows
        ),
        // itemCount: userModel.data.length,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 15,
            shadowColor: Colors.grey.shade300,
            color: Colors.grey.shade100,
            margin: const EdgeInsets.fromLTRB(10,5,10,5),
            child: Container(
              height: 200,
              width: 100,
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
                              "Account Holder Name :",
                              style: myCardTitleTextStyle,
                            ),
                            Text(
                              userModel.data[index].firstName.toString(),
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
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Text(
                                'Savings',
                                style: TextStyle(color: Colors.white),
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
                              "Account Number :",
                              style: myCardTitleTextStyle,
                            ),
                            Text(
                              "355456892398",
                              style: myContentTextStyle,
                            ),
                            Text(
                              "IFSC CODE :",
                              style: myCardTitleTextStyle,
                            ),
                            Text(
                              "SBI000998",
                              style: myContentTextStyle,
                            ),

                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bank Name :",
                              style: myCardTitleTextStyle,
                            ),
                            Text(
                              "Axis Bank",
                              style: myContentTextStyle,
                            ),
                            Text(
                              "Branch Name :",
                              style: myCardTitleTextStyle,
                            ),
                            Text(
                              "Pallikaranai",
                              style: myContentTextStyle,
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
