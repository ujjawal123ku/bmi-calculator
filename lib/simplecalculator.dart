import 'package:flutter/material.dart';


class calculator extends StatefulWidget {

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    throw UnimplementedError();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
              child: Container(
               color: Colors.red,
              )
          )
        ],
      ),
    );
  }
}
