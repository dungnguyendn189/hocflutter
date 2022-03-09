import 'package:http/http.dart' as http;

Future fetchContentData() {
  final contentRespone = http.get(
    Uri.parse('https://poetrydb.org/author,title/Shakespeare;Sonnet'),
  );
  return contentRespone;
}
