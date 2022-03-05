import 'package:http/http.dart' as http;

Future fetchNameData() {
  final nameDataRespone =
      http.get(Uri.parse('https://restcountries.com/v3.1/all'));
  return nameDataRespone;
}
