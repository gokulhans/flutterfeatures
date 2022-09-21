import 'package:flutter/material.dart';
import 'package:flutterfeatures/Design/cards.dart';
import 'package:flutterfeatures/Design/gridcards.dart';
import 'package:flutterfeatures/Routes/routedemo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        'routes': (ctx) {
          return const FirstRoute();
        },
        'cards': (ctx) {
          return const Cards();
        },
        'gridcards': (ctx) {
          return const Gridcards();
        },
      },
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final List<String> names = ['Routes', 'Cards','Gridcards'];
  final List<String> items = ['routes', 'cards','gridcards'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Flutter Features")),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(names[index]),
              onTap: () {
                Navigator.pushNamed(context, items[index]);
              },
            );
          },
        ));
  }
}
