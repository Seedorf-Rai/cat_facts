import 'package:cat_facts/model/joke_model.dart';
import 'package:cat_facts/remote_service/remote_service.dart';
import 'package:get/get.dart';

class JokeController extends GetxController {
  var jokelist =
      JokeModel(categories: [], iconUrl: "", id: "", url: "", value: "").obs;
  var isLoading = true.obs;
  Future getjokelist() async {
    try {
      isLoading(true);
      var data = await RemotesService.fetchjokes();
      if (data != null) {
        jokelist.value = data ;
      }
    } catch (e) {
      "Message".toString();
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    
    super.onInit();
    getjokelist();
  }
}
