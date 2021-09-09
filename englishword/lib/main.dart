import 'package:englishword/packages/quote/qoute_model.dart';
import 'package:englishword/packages/quote/quote.dart';
import 'package:englishword/page/lading_page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Quotes().getAll();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Landingpage(),
    );
  }
}
