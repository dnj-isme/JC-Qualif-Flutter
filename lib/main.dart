import 'package:flutter/material.dart';
import 'package:jc_qualif_flutter/pages/login.dart';

void main() {
  runApp(const QualifFlutter());
}

class QualifFlutter extends StatefulWidget {
  const QualifFlutter ({Key? key}) : super(key: key);
  @override
  _QualifFlutterState createState() {
    return _QualifFlutterState();
  }

  static _QualifFlutterState of(BuildContext context) {
    return context.findAncestorStateOfType<_QualifFlutterState>()!;
  }
}

class _QualifFlutterState extends State<QualifFlutter> {
  ThemeMode _themeMode = ThemeMode.light;

  void switchTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? _themeMode = ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: const LoginPage(),
    );
  }
}