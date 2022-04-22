import 'package:cat_facts/controller/cat_controller.dart';
import 'package:cat_facts/view/joke.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var catController = Get.find<CatController>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
        ),
        body: Obx(() {
          if (catController.isLoading.value == true) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Text(catController.catList.value.fact),
                  SizedBox(
                    width: Get.size.width,
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Get.to(() => const JokeView());
                      },
                      child: const Text("Joke Page"))
                ],
              ),
            );
          }
        }),
      ),
    );
  }
}
