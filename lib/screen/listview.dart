import 'package:flutter/material.dart';
import 'package:ukhantukka/Data/data.dart';
import 'package:ukhantukka/function.dart';

// ignore: must_be_immutable
class Listview extends StatefulWidget {
  String text;
// ignore: use_key_in_widget_constructors
  Listview({required this.text});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  late List<String> view =
      ukhanData.where((i) => i.startsWith(widget.text)).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.grey.shade200,
          ),
          ListView.builder(
              itemCount: view.length,
              itemBuilder: ((context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  shadowColor: Colors.black45,
                  elevation: 9,
                  margin: const EdgeInsets.only(
                      left: 8, top: 7, bottom: 7, right: 6),
                  child: ListTile(
                    //tileColor: index % 3 == 1
                    // ? Colors.lightBlue.shade100
                    // : index % 3 == 0
                    //     ? Colors.orangeAccent.shade100
                    //     : Colors.brown.shade200,
                    //tileColor: Colors.white38,
                    leading: CircleAvatar(
                        backgroundColor: Colors.lightGreen.shade100,
                        child: Text(
                          numberchecker((index + 1).toString()),
                          style: const TextStyle(color: Colors.black),
                        )),
                    title: Text(view[index]),
                  ),
                );
                // return Container(
                //   color: index%3 == 1 ?Colors.lightBlue : index%3 == 0 ? Colors.orangeAccent : Colors.black12,
                //   row
                // )
              })),
        ],
      ),
    );
  }
}
