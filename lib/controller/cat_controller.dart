import 'package:cat_facts/model/cat_model.dart';
import 'package:cat_facts/remote_service/remote_service.dart';
import 'package:get/get.dart';

class CatController extends GetxController {
  var dogList = <CatModel>[].obs;
  var isLoading = true.obs;

  Future getDogList() async {
    try {
      isLoading(true);
      var data = await RemotesService.fetchcatfacts();
      if (data != null) {
        dogList.value = data as List<CatModel>;
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
    getDogList();
  }
}
