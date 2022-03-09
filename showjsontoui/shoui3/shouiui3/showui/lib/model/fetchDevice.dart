import 'package:http/http.dart' as http;

Future fetchDevice() {
  final deviceRespones = http.get(
      Uri.parse('https://www.dropbox.com/s/v7ixr99x9h3slc9/device.json?dl=1'));
  return deviceRespones;
}
