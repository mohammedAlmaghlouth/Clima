import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper {
  String url;

  NetworkHelper(this.url);

  Future getData() async {
    Response response = await get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
