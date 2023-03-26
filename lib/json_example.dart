import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_learning/example_data.dart';
import 'package:json_learning/human.dart';

class JsonExample extends StatelessWidget {
  const JsonExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: JsonExampleProvider(
          coder: JsonExampleCoder(),
          child: const ButtonWidget(),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () =>
                  JsonExampleProvider.read(context)?.coder.encode(),
              child: const Text('Code')),
          ElevatedButton(
              onPressed: () =>
                  JsonExampleProvider.read(context)?.coder.decode(),
              child: const Text('Decode'))
        ],
      ),
    );
  }
}

class JsonExampleProvider extends InheritedWidget {
  final JsonExampleCoder coder;
  const JsonExampleProvider({
    Key? key,
    required this.coder,
    required Widget child,
  }) : super(key: key, child: child);

  static JsonExampleProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<JsonExampleProvider>();
  }

  static JsonExampleProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<JsonExampleProvider>()
        ?.widget;
    return widget is JsonExampleProvider ? widget : null;
  }

  @override
  bool updateShouldNotify(JsonExampleProvider oldWidget) {
    return true;
  }
}

class JsonExampleCoder {
  void encode() {
    final objects = humans.map((e) => e.toJson()).toList();
    final jsonString = jsonEncode(objects);
    print(jsonString);
  }

  void decode() {
    try{
      final json = jsonDecode(jsonString) as List<dynamic>;
      final humans = json
          .map((dynamic e) => Human.fromJson(e as Map<String, dynamic>))
          .toList();
      print(humans);
    } catch (error){
      print(error);
    }
  }
}
