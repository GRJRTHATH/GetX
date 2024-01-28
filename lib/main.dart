import 'package:custom_class_observable/movie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var movie = Movie(name: 'Legend', ticket: 100).obs;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Obx example"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${movie.value.name}",
                style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  movie.value.name = "boyka";
                  movie.refresh();
                  print(movie.value.name);
                },
                child: Text("Upper"))
          ],
        ),
      ),
    ));
  }
}
