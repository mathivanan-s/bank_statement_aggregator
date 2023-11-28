import 'package:bank_statement_aggregator/constants/constants_screen.dart';
import 'package:bank_statement_aggregator/model/UserModel.dart';
import 'package:bank_statement_aggregator/retrofit/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MobileBSAListPage extends StatefulWidget {
  const MobileBSAListPage({Key? key}) : super(key: key);

  @override
  State<MobileBSAListPage> createState() => _MobileBSAListPageState();
}

class _MobileBSAListPageState extends State<MobileBSAListPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Saira')),
      home: Scaffold(
        appBar: myAppBar,
        drawer: myDrawer,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: callApiFutureBuilder(),
                    )
                  ],
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
    return ListView.builder(
        // itemCount: userModel.data.length,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 15,
            shadowColor: Colors.grey.shade300,
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
                                color: Colors.blue,
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
