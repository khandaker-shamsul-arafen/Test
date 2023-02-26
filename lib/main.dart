import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final key = GlobalKey<ShantoState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Shanto(key: key),
             const Subrata(),
          ],
        ),
      ),
    );
  }
}

class Shanto extends StatefulWidget {
  const Shanto({ required Key key }) : super(key: key);
  @override
  State createState() => ShantoState();
}

class ShantoState extends State<Shanto> {
  String name  = "shanto";
  int id=12;
  //String get createdObject => _createdObject;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          Text(name),
          Text(id.toString()),
        ],
      ),
    );
  }
}

class Subrata extends StatefulWidget {
  const Subrata({super.key});

  @override
  State createState() => SubrataState();
}

class SubrataState extends State<Subrata> {
  String text = 'PRESS ME';
  String name  = " ";
  int id=0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:  ElevatedButton(
        child:  Text(text),
        onPressed: () {
          setState(() {
            name = key.currentState?.name??"";
            id=key.currentState?.id??0;
            debugPrint("$name,,,,,$id");
          });
        },
      ),
    );
  }
}