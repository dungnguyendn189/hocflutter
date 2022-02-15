import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget customButton(String value) {
      return Expanded(
        child: TextButton(
          onPressed: () {},
          child: Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Text(
              value,
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Máy tính cầm tay"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  '0',
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      customButton("AC"),
                      customButton("+/-"),
                      customButton("%"),
                      customButton("/"),
                    ],
                  ),
                  Row(
                    children: [
                      customButton("9"),
                      customButton("8"),
                      customButton("7"),
                      customButton("*"),
                    ],
                  ),
                  Row(
                    children: [
                      customButton("6"),
                      customButton("5"),
                      customButton("4"),
                      customButton("+"),
                    ],
                  ),
                  Row(
                    children: [
                      customButton("3"),
                      customButton("2"),
                      customButton("1"),
                      customButton("-"),
                    ],
                  ),
                  Row(
                    children: [
                      customButton("C"),
                      customButton("0"),
                      customButton("/"),
                      customButton("="),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
