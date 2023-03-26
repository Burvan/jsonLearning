import 'package:flutter/material.dart';

import 'json_example.dart';

void main() => runApp(JsonLesson());

class JsonLesson extends StatelessWidget {
  const JsonLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: JsonExample(),
    );
  }
}
