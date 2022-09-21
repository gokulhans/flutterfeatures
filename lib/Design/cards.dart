import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);
  final networkurl =
      "https://images.unsplash.com/photo-1599043513900-ed6fe01d3833?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hpY2tlbiUyMGJpcnlhbml8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const ListTile(
                // leading: Icon(Icons.arrow_drop_down_circle),
                title: Center(
                  child: Text(
                    'Chicken Biriyani',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                ),
                // subtitle: Text(
                //   'Secondary Text',
                //   style: TextStyle(color: Colors.black.withOpacity(0.6)),
                // ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1599043513900-ed6fe01d3833?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hpY2tlbiUyMGJpcnlhbml8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton.icon(
                      icon: const Icon(Icons.delete_rounded, size: 18),
                      label: const Text("Delete"),
                      onPressed: () {},
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.edit, size: 16),
                      label: const Text("Edit"),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
