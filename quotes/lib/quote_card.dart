import 'package:flutter/material.dart';
import 'quotes.dart';

class QuoteCard extends StatelessWidget {
  final QuoteList e;
  final delete;
  const QuoteCard({Key? key, required this.e, required this.delete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(30, 40, 30, 0),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.,
          children: <Widget>[
            Text(e.name,
                style: TextStyle(
                  color: Colors.amber[800],
                )),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${e.age}',
              // style: TextStyle(
              //   color: Colors.amber[800],
              // )),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
              TextButton.icon(
                  onPressed: delete,
                  icon: const Icon(Icons.delete_forever_rounded),
                  label: const Text("Delete")),
            ]),
          ],
        ),
      ),
    );
  }
}
