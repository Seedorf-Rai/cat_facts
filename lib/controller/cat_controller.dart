import 'package:cat_facts/model/cat_model.dart';
import 'package:cat_facts/remote_service/remote_service.dart';
import 'package:get/get.dart';

class CatController extends GetxController {
  var catList = CatModel(fact: "", length: 0).obs;
  var isLoading = true.obs;

  Future getCatlist() async {
    try {
      isLoading(true);
      var data = await RemotesService.fetchcatfacts();
      if (data != null) {
        catList.value = data;
      }
    } catch (e) {
      Get.snackbar("Message", e.toString());
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    getCatlist();
  }
}
