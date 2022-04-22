import 'package:cat_facts/controller/cat_controller.dart';
import 'package:cat_facts/controller/joke_controller.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CatController());
    Get.put(JokeController());
  }
}
