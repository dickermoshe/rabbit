import 'package:example/src/rabbit/flutter/container.dart';
import 'package:example/src/rabbit/flutter/directionality.dart';
import 'package:example/src/rabbit/flutter/elevated_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
            body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                verticalDirection: VerticalDirection.down,
                children: [
              $Directionality(
                textDirection: TextDirection.ltr,
                child: $Container(clipBehavior: Clip.none) >>
                    $ElevatedButton(
                      autofocus: false,
                      iconAlignment: IconAlignment.start,
                      child: const Text('Hello, World!'),
                    ),
              ),
              $Directionality(textDirection: TextDirection.ltr) >>
                  $Container(clipBehavior: Clip.none) >>
                  $ElevatedButton(
                    autofocus: false,
                    iconAlignment: IconAlignment.start,
                    child: const Text('Hello, World!'),
                  ),
            ])));
  }
}
