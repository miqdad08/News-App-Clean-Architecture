import 'package:flutter/material.dart';
import 'package:news_app_clean_architecture/injection_container.dart';

Future<void> main()async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(),
    );
  }
}
