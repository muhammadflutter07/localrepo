import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    var response = await http.get(Uri.parse('https://example.com/data'));

    if (response.statusCode == 200) {
      print('Data received');
    } else if (response.statusCode == 401) {
      print(' Login required');
    } else if (response.statusCode == 404) {
      print(' Not Found');
    } else if (response.statusCode >= 500) {
      print(' Server error');
    }
  } catch (e) {
    print(' Network issue: $e');
  }
}

void main() async {
  await fetchData();
}
