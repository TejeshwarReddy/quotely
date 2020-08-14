import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quotely/API/fetchQuote.dart';
import 'package:quotely/DataModel/quote.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<QuoteData> futureQuote;

  @override
  void initState() {
    super.initState();
    // futureQuote = fetchQuote();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quotly',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quotely'),
          actions: [
            IconButton(
              icon: Icon(Icons.category),
              onPressed: () => print('button clicked'),
            )
          ],
        ),
        backgroundColor: Colors.green[400],
        body: Center(
          child: FutureBuilder<QuoteData>(
            future: futureQuote,
            builder: (context, snapshot) {
              return Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Ignition (n): The motivational process that occurs when your identity becomes linked to a long-term vision of your future. Triggers significant amounts of unconscious energy; usually marked by the realization: That is who I want to be.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto',
                    fontSize: 24,
                  ),
                ),
              );
              // if (snapshot.hasData) {
              //   // return Text(snapshot.data.contents.quotes[0].quote);
              // } else if (snapshot.hasError) {
              //   return Text("${snapshot.error}");
              // }

              // By default, show a loading spinner.
              // return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
