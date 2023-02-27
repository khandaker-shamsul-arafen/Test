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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Shanto(),
             Subrata(),
          ],
        ),
      ),
    );
  }
}

class Shanto extends StatefulWidget {

   String name = "Ornab vai ";
   int id = 13;

  @override
  State createState() => ShantoState();
}

class ShantoState extends State<Shanto> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [

        ],
      ),
    );
  }
}

class Subrata extends StatefulWidget {
   Subrata({super.key});
  var shantoObject=Shanto();
   String buttonText = 'PRESS ME';
   String name = "";
   int id = 0;





  @override
  State createState() => SubrataState();
}

class SubrataState extends State<Subrata> {



  @override
  Widget build(BuildContext context) {
    widget.name=widget.shantoObject.name;
    widget.id=widget.shantoObject.id;
    return Center(
      child: Column(
        children: [
          Text(widget.name),
          Text(widget.id.toString()),
        ],
      ),
    );
  }
}
