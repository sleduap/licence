import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Licence()));
}

class Licence extends StatefulWidget {
  const Licence({Key? key}) : super(key: key);

  @override
  State<Licence> createState() => _LicenceState();
}

class _LicenceState extends State<Licence> {
  int licenceType = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          title: const Text("Licence"),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(
              () {
                licenceType += 1;
              },
            );
          },
          label: const Text("Press"),
          icon: const Icon(Icons.mouse),
          backgroundColor: Colors.grey[900],
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Colors.blue],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/sudars.jpg"),
                  radius: 100,
                ),
              ),
              const Divider(
                height: 90,
                color: Colors.grey,
              ),
              const Text(
                "Name",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              // SizedBox(
              //   height: 5,
              // ),
              const Text(
                "Sudarshan",
                style: TextStyle(
                  fontSize: 24,
                  // fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Category",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              // SizedBox(
              //   height: 5,
              // ),
              Text(
                "$licenceType asd",
                style: const TextStyle(
                  fontSize: 24,
                  // fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const <Widget>[
                  Icon(
                    Icons.mail,
                    color: Colors.grey,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "sleduap@gmail.com",
                    style: TextStyle(
                      fontSize: 24,
                      // letterSpacing: 1,
                      color: Colors.amber,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
