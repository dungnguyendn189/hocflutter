// ignore_for_file: prefer_const_constructors

import 'package:clonetravelapp/contacts/metering.dart';
import 'package:clonetravelapp/main.dart';
import 'package:clonetravelapp/model/question_api.dart';
import 'package:clonetravelapp/rxdart/rxdart_logic.dart';
import 'package:clonetravelapp/screen/second_Screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, this.size}) : super(key: key);
  final size;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _answer = 0;
  QuestionBloc currentQuestionPage = QuestionBloc();

  @override
  Widget build(BuildContext context) {
    setState(
      () {
        currentQuestionPage.currentQuestion.add(questionsData);
      },
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Metering.kPrimary,
          title: Text('Question ?'),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: StreamBuilder<List<Question>>(
              stream: currentQuestionPage.currentQuestion.stream,
              builder: (context, snapshot) {
                final valueBloc = snapshot.data;
                final List<String>? mapOptional =
                    valueBloc?[currentQuestionPage.questionIndex.value]
                        .options
                        ?.map((e) => e.toString())
                        .toList();
                final int? mapAnswer =
                    valueBloc?[currentQuestionPage.questionIndex.value].answer;
                final String? feedBacks =
                    valueBloc?[currentQuestionPage.questionIndex.value]
                        .feedback;
                return Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Metering.kPrimary,
                          child: Text(
                              "${valueBloc?[currentQuestionPage.questionIndex.value].id}"),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: Text(
                            '${valueBloc?[currentQuestionPage.questionIndex.value].question}',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTileOption(mapOptional!, mapAnswer!),
                    SizedBox(
                      height: 100,
                    ),
                    nextPage('Next', _answer, mapAnswer, feedBacks),
                  ],
                );
              }),
        ),
      ),
    );
  }

  Widget ListTileOption(List<String> mapOptional, int mapAnswer) {
    return Container(
      height: 300,
      width: 300,
      child: ListView.builder(
        itemCount: mapOptional.length,
        itemBuilder: (context, index) {
          return RadioListTile(
            title: Text('${mapOptional[index]}'),
            value: index,
            groupValue: _answer,
            onChanged: (value) {
              setState(
                () {
                  _answer = int.parse(value.toString());
                },
              );
            },
          );
        },
      ),
    );
  }

  Widget nextPage(String valueButton, int _answer, mapAnswer, feedBacks) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        color: Metering.kPrimary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(
              () {
                if (valueButton == 'Next') {
                  if (_answer != mapAnswer) {
                    final snackBar = SnackBar(
                      content: Text(feedBacks),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          // Some code to undo the change.
                        },
                      ),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                }
                if (valueButton == 'Next') {
                  if (_answer == mapAnswer) {
                    if (currentQuestionPage.questionIndex.value <
                        questionsData.length) {
                      currentQuestionPage.questionIndex.value++;
                    } else {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => SecondScreen()),
                          ),
                        );
                      });
                    }
                  }
                }
              },
            );
          },
          child: Text(
            valueButton,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
