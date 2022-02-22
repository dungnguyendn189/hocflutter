import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'logic_caculator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Logicalculator logicalculator = Logicalculator();
  @override
  Widget build(BuildContext context) {
    String operation = '';
    int enumf = 0;
    String finalenum;

    Widget customButton(String value) {
      return Expanded(
        child: TextButton(
          onPressed: () {
            logicalculator.currentText
                .add('${logicalculator.currentText.value}$value');

            if (value == 'AC') {
              logicalculator.currentText.add('');
            }
            if (value == '+/-') {
              enumf++;
              if (enumf % 2 == 0) {
                final fulltext = logicalculator.currentText.value;
                logicalculator.first.add(fulltext.replaceAll('+/-', ''));
              }
              if (enumf % 2 != 0) {
                final fulltext = logicalculator.currentText.value;
                logicalculator.first.add(fulltext.replaceAll('+/-', ''));
                logicalculator.currentText.value = '-' +
                    logicalculator.currentText.value.replaceAll('+/-', '');
              }
              if (enumf % 2 == 0) {
                final fulltext = logicalculator.currentText.value;
                logicalculator.first.add(fulltext.replaceAll('+/-', ''));
                logicalculator.currentText.value =
                    logicalculator.currentText.value.replaceAll('+/-', '');
              }
            }
            if (value == '+') {
              final fullText = logicalculator.currentText.value;
              logicalculator.first.add(fullText.replaceAll('+', ''));
              operation = value;
            }
            if (value == '-') {
              final fulltext = logicalculator.currentText.value;
              logicalculator.first.add(fulltext.replaceAll('-', ''));
              operation = value;
            }
            if (value == '/') {
              final fulltext = logicalculator.currentText.value;
              logicalculator.first.add(fulltext.replaceAll('/', ''));
              operation = value;
            }
            if (value == '*') {
              final fulltext = logicalculator.currentText.value;
              logicalculator.first.add(fulltext.replaceAll('*', ''));
              operation = value;
            }
            if (value == '%') {
              final fulltext = logicalculator.currentText.value;
              logicalculator.first.add(fulltext.replaceAll('/', ''));
              operation = value;
            }

            if (value == '=') {
              if (operation == '-') {
                final secondValue =
                    logicalculator.currentText.value.split(operation);
                if (secondValue.length == 3) {
                  // case số đầu là số có dấu -
                  secondValue.remove(
                      ""); // xoá cmn cái rỗng, ví dụ  [, 2, 1=]  ==> xoá thành [2, 1=]
                  secondValue[0] =
                      "-${secondValue[0]}"; // thay cmn số đầu, add dấu - [2, 1=] thành [-2, 1=]
                } else {
                  // case số đầu ko có dấu -

                }
                print(secondValue);
                final secondValueAsint = secondValue[1].replaceAll('=', '');
                final result = (int.tryParse(logicalculator.first.value) ?? 0) -
                    (int.tryParse(secondValueAsint) ?? 0);
                logicalculator.currentText.add(result.toString());
              }
              if (operation == '+') {
                final secondValue =
                    logicalculator.currentText.value.split(operation);
                final secondValueAsint = secondValue[1].replaceAll('=', '');
                final result = (int.tryParse(logicalculator.first.value) ?? 0) +
                    (int.tryParse(secondValueAsint) ?? 0);
                logicalculator.currentText.add(result.toString());
              }
              if (operation == '/') {
                final secondValue =
                    logicalculator.currentText.value.split(operation);
                final secondValueAsit = secondValue[1].replaceAll('=', '');
                final result = (int.tryParse(logicalculator.first.value) ?? 0) /
                    (int.tryParse(secondValueAsit) ?? 0);
                logicalculator.currentText.add(result.toString());
              }
              if (operation == '*') {
                final secondValue =
                    logicalculator.currentText.value.split(operation);
                final secondValueAsit = secondValue[1].replaceAll('=', '');
                final result = (int.tryParse(logicalculator.first.value) ?? 0) *
                    (int.tryParse(secondValueAsit) ?? 0);
                logicalculator.currentText.add(result.toString());
              }
              if (operation == '%') {
                final secondValue =
                    logicalculator.currentText.value.split(operation);

                final secondValueAsit = secondValue[1].replaceAll('=', '');
                final result =
                    ((int.tryParse(logicalculator.first.value) ?? 0) /
                            (int.tryParse(secondValueAsit) ?? 0)) *
                        100;
                logicalculator.currentText.add(result.toString());
              }
              logicalculator.currentText.value =
                  logicalculator.currentText.value.replaceAll('=', '');
            }
          },
          child: Container(
            padding: EdgeInsets.all(10),
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
        title: Text("Máy tính cầm tay by PoNa Team"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: StreamBuilder<String>(
                  stream: logicalculator.currentText,
                  builder: (context, snapshot) {
                    String text = snapshot.data ?? '0';
                    return Container(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 70,
            ),
            Expanded(
              child: Container(
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
                        customButton("0"),
                        customButton("="),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
