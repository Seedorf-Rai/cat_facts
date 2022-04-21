import 'package:cat_facts/model/cat_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class RemotesService {
  static var client = http.Client();

  static Future<CatModel?> fetchcatchfacts() async {
    try {
      var response = await client.get(Uri.parse("https://catfact.ninja/fact"));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return catModelFromJson(jsonString);
      } else {
        return null;
      }
    } catch (e) {
      Get.snackbar("Message", e.toString());
    }
  }
}
