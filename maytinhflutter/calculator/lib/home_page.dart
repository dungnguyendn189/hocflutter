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

    bool canInput(String newOperationRT) {
      String newOperationRT = logicalculator.currentText.value;
      if (newOperationRT == newOperationRT) {
        if (newOperationRT == '=') {
          return false;
        }
      }
      return true;
    }

    bool canInputAddOrSubSubtract(String newAddedString) {
      String currentText = logicalculator.currentText.value;

      if (currentText == '') {
        // hiện tại trên màn hình del có text chi
        if (newAddedString == '+' ||
            newAddedString == '-' ||
            newAddedString == '*' ||
            newAddedString == '/' ||
            newAddedString == '%') {
          // kiểm tra coi nhấn + - mà màn hình ddel có sốchi
          return false;
        }
      }
      return true;
    }

    bool canInPutmidValue(String lasValue) {
      String currentText = logicalculator.currentText.value;
      if (currentText.length < 1) {
        // kiểm tra xem text hiện tại có độ dài mấy, độ dài <1 là 0 ==> mặc định cho input dc

        return true;
      }
      String lastCurrText = currentText.substring(currentText.length - 1);
      if (currentText == currentText) {
        if (lastCurrText == '+' ||
            lastCurrText == '*' ||
            lastCurrText == '-' ||
            lastCurrText == '/' ||
            lastCurrText == '%') {
          if (lasValue == '+' ||
              lasValue == '*' ||
              lasValue == '-' ||
              lasValue == '/' ||
              lasValue == '%') {
            return false;
          }
        }
      }
      return true;
    }

    bool twoOperation(String addValue) {
      String currentText = logicalculator.currentText.value;

      int counter(String currentText) {
        return currentText.split('').where((element) => element == '+').length;
      }

      if (currentText == currentText) {
        if (counter(currentText) == 1) {
          if (addValue == '+' ||
              addValue == '-' ||
              addValue == '/' ||
              addValue == '*' ||
              addValue == '%') {
            return false;
          }
        }
      }
      return true;
    }

    bool twoOperation1(String addValue) {
      String currentText = logicalculator.currentText.value;
      int counter(String currenttext) {
        return currentText.split('').where((element) => element == '-').length;
      }

      if (currentText == currentText) {
        if (counter(currentText) == 1) {
          if (addValue == '+' ||
              addValue == '-' ||
              addValue == '/' ||
              addValue == '*' ||
              addValue == '%') {
            return false;
          }
        }
      }
      return true;
    }

    bool twoOperation2(String addValue) {
      String currentText = logicalculator.currentText.value;
      int counter(String currenttext) {
        return currentText.split('').where((element) => element == '/').length;
      }

      if (currentText == currentText) {
        if (counter(currentText) == 1) {
          if (addValue == '+' ||
              addValue == '-' ||
              addValue == '/' ||
              addValue == '*' ||
              addValue == '%') {
            return false;
          }
        }
      }
      return true;
    }

    bool twoOperation3(String addValue) {
      String currentText = logicalculator.currentText.value;
      int counter(String currenttext) {
        return currentText.split('').where((element) => element == '*').length;
      }

      if (currentText == currentText) {
        if (counter(currentText) == 1) {
          if (addValue == '+' ||
              addValue == '-' ||
              addValue == '/' ||
              addValue == '*' ||
              addValue == '%') {
            return false;
          }
        }
      }
      return true;
    }

    bool twoOperation4(String addValue) {
      String currentText = logicalculator.currentText.value;
      int counter(String currenttext) {
        return currentText.split('').where((element) => element == '%').length;
      }

      if (currentText == currentText) {
        if (counter(currentText) == 1) {
          if (addValue == '+' ||
              addValue == '-' ||
              addValue == '/' ||
              addValue == '*' ||
              addValue == '%') {
            return false;
          }
        }
      }
      return true;
    }

    bool ending(String addnewValue) {
      String currenText = logicalculator.currentText.value;
      if (currenText.length - 2 < 0) {
        return true;
      }
      String endText = currenText.substring(currenText.length - 2);
      if (currenText == currenText) {
        if (endText == '.0') {
          if (addnewValue == '3' ||
              addnewValue == '1' ||
              addnewValue == '2' ||
              addnewValue == '4' ||
              addnewValue == '5' ||
              addnewValue == '6' ||
              addnewValue == '7' ||
              addnewValue == '8' ||
              addnewValue == '9' ||
              addnewValue == 'C' ||
              addnewValue == '.' ||
              addnewValue == '0' ||
              addnewValue == '+/-') {
            return false;
          }
        }
      }
      return true;
    }

    Widget customButton(String value) {
      return Expanded(
        child: TextButton(
          onPressed: () {
            if (!canInput(value)) {
              return;
            }
            if (!canInputAddOrSubSubtract(value)) {
              // coi cái điều kiện ni
              return;
            }
            if (!canInPutmidValue(value)) {
              return;
            }
            if (!twoOperation(value)) {
              return;
            }
            if (!twoOperation1(value)) {
              return;
            }
            if (!twoOperation2(value)) {
              return;
            }
            if (!twoOperation3(value)) {
              return;
            }
            if (!twoOperation4(value)) {
              return;
            }
            if (!ending(value)) {
              return;
            }

            logicalculator.currentText
                .add('${logicalculator.currentText.value}$value');

            if (value == 'AC') {
              logicalculator.currentText.add('');
            }
            if (value == 'C') {
              final full = logicalculator.currentText.value;
              logicalculator.currentText.add(full.replaceAll('C', ''));
              logicalculator.currentText.value = logicalculator
                  .currentText.value
                  .substring(0, logicalculator.currentText.value.length - 1);
            }

            if (value == '+/-') {
              enumf++;

              if (enumf % 2 != 0) {
                final fulltext = logicalculator.currentText.value;
                logicalculator.first.add(fulltext.replaceAll('+/-', ''));
                logicalculator.currentText.value =
                    ('-${logicalculator.currentText.value.replaceAll('+/-', '')}');
              }
              if (enumf % 2 == 0) {
                final fulltext = logicalculator.currentText.value;
                logicalculator.first.add(fulltext.replaceAll('+/-', ''));
                logicalculator.currentText.value =
                    logicalculator.currentText.value.replaceAll('+/-', '');
                logicalculator.currentText.value =
                    logicalculator.currentText.value.replaceAll('-', '');
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

                final secondValueAsint = secondValue[1].replaceAll('=', '');
                final result =
                    (double.tryParse(logicalculator.first.value) ?? 0) -
                        (double.tryParse(secondValueAsint) ?? 0);
                logicalculator.currentText.add(result.toString());
              }
              if (operation == '+') {
                final secondValue =
                    logicalculator.currentText.value.split(operation);

                final secondValueAsint = secondValue[1].replaceAll('=', '');

                final result =
                    (double.tryParse(logicalculator.first.value) ?? 0) +
                        (double.tryParse(secondValueAsint) ?? 0);

                logicalculator.currentText.add(result.toString());
              }
              if (operation == '/') {
                final secondValue =
                    logicalculator.currentText.value.split(operation);
                final secondValueAsit = secondValue[1].replaceAll('=', '');
                final result =
                    (double.tryParse(logicalculator.first.value) ?? 0) /
                        (double.tryParse(secondValueAsit) ?? 0);
                logicalculator.currentText.add(result.toString());
              }
              if (operation == '*') {
                final secondValue =
                    logicalculator.currentText.value.split(operation);

                final secondValueAsit = secondValue[1].replaceAll('=', '');

                final result =
                    (double.tryParse(logicalculator.first.value) ?? 0) *
                        (double.tryParse(secondValueAsit) ?? 0);
                logicalculator.currentText.add(result.toString());
              }
              if (operation == '%') {
                final secondValue =
                    logicalculator.currentText.value.split(operation);

                final secondValueAsit = secondValue[1].replaceAll('=', '');
                final result =
                    ((double.tryParse(logicalculator.first.value) ?? 0) /
                            (double.tryParse(secondValueAsit) ?? 0)) *
                        100;

                logicalculator.currentText.add(result.toString());
              }
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
                        customButton("C"),
                        customButton("0"),
                        customButton("."),
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
