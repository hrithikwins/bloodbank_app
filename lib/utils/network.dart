import 'package:http/http.dart' as http;

class Network {
  static Future<void> get(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        // return response.body;
        print(response.body);
      } else {
        // return 'Error: ${response.statusCode}';
        // return
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      // return 'Error: $e';
      print('Error: $e');
    }
  }
}
