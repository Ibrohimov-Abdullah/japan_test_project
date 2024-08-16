import "dart:convert";
import "dart:developer";
import "package:http/http.dart" as http;
import "package:http/http.dart";

class Api {
  // baseurl
  static const String baseurl = "65cb8821efec34d9ed87b59e.mockapi.io";


  // APIS
  static String apiGetAllHospitals = "/japan_test_project";

  //methods
  // ignore: non_constant_identifier_names
  static Future<String?> GET(String api) async {
    final Uri url = Uri.http(baseurl, api);
    final http.Response response = await http.get(
      url,
      headers: {"Content-Type": "application/json; charset=UTF-8"},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return utf8.decode(response.bodyBytes);
    }

    return null;
  }


  // ignore: non_constant_identifier_names
  static Future<String?> POST(String api, Map<String, dynamic> body) async {
    final Uri url = Uri.http(baseurl, api);

    final Response response = await http.post(url, body: jsonEncode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }


  /// params

  static Map<String, String> emptyParams() => <String, String>{};

  /// body

  static Map<String, dynamic> bodyEmpty() => <String, dynamic>{};
}