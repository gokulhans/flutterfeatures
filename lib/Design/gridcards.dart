import 'package:flutter/material.dart';

class Gridcards extends StatefulWidget {
  const Gridcards({ Key? key }) : super(key: key);

  @override
  State<Gridcards> createState() => _GridcardsState();
}

class _GridcardsState extends State<Gridcards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Table"),
      ),
      body: HomeScreen()
    );
  }
}


class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Map> myProducts =
      List.generate(25, (index) => {"id": index, "name": 'T $index'})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 4 / 2,
              crossAxisSpacing: 30,
              mainAxisSpacing: 30),
          itemCount: myProducts.length-1,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15)),
              child: Text(myProducts[index+1]["name"],style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
            );
          }),
    );
  }
}