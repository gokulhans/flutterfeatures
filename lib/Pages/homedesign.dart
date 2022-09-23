// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Homedesign extends StatefulWidget {
  const Homedesign({Key? key}) : super(key: key);

  @override
  State<Homedesign> createState() => _HomedesignState();
}

class _HomedesignState extends State<Homedesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Text(
                          "Hi, Govind!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue[600]),
                      padding: EdgeInsets.all(4),
                      child: IconButton(
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
