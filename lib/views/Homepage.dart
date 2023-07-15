import 'dart:ffi';

import 'package:flutter/material.dart';
import './../models/people.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<People>? people;
  var isLoaing = false;

  @override
  void initState() {
    super.initState();
    // fetch data from api

    getData();
  }

  getData() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            child: Text('$index'),
          );
        },
      ),
    );
  }
}
