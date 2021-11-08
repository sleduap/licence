// import 'dart:html';

import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() {
  runApp(const MaterialApp(home: Quotes()));
}

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<QuoteList> quot = [
    QuoteList(name: "Ram", age: 8),
    QuoteList(name: "Shyam", age: 10),
    QuoteList(name: "Ram", age: 12)
  ];
  // Widget quoteTemplate(e) {
  //   return QuoteCard(e: e);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: const Text("Quotes"),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0,
      ),
      body: Column(
        children: quot
            .map((b) => QuoteCard(
                e: b,
                delete: () {
                  setState(() {
                    quot.remove(b);
                  });
                }))
            .toList(),
        // children: quot
        //     .map((e) => Text(
        //           '${e.name}-${e.age}',
        //           style: TextStyle(color: Colors.amber[800]),
        //         ))
        //     .toList(),
      ),
    );
  }
}
