import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'api.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutorial API Dart',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('My App Use API Show '),
          ),
          body: FutureBuilder<List<Album>>(
              future: fetchAlbums(http.Client()),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                    child: Text('An error has occurred!'),
                  );
                } else if (snapshot.hasData) {
                  return AlbumList(albums: snapshot.data!);
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
        ),
      ),
    );
  }
}

class AlbumList extends StatelessWidget {
  const AlbumList({Key? key, required this.albums}) : super(key: key);

  final List<Album> albums;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: albums.length,
      itemBuilder: (context, index) {
        return Container(
          height: 150,
          width: 400,
          child: Column(
            children: [
              Text(albums[index].category),
              Text(albums[index].type),
              Text(albums[index].difficulty),
              Text(albums[index].question),
              Text(albums[index].correct_answer),
            ],
          ),
        );
      },
    );
  }
}
