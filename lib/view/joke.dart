import 'package:cat_facts/controller/joke_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JokeView extends StatelessWidget {
  const JokeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var jokeController = Get.find<JokeController>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Joke Page"),
        ),
        body: Column(children: [Text(jokeController.jokelist.value.value)]),
      ),
    );
  }
}
