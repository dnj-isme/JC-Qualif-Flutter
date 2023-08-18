import 'package:flutter/material.dart';
import 'package:jc_qualif_flutter/pages/login.dart';

void main() {
  runApp(const QualifFlutter());
}

class QualifFlutter extends StatelessWidget {
  const QualifFlutter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage()
    );
  }
}
