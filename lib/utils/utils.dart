import 'package:flutter/material.dart';
import 'package:jc_qualif_flutter/main.dart';

AppBar generateAppBar(String name) {
  return AppBar(
    title: Text(name),
  );
}

AppBar generateAppBarWithTheme(String name) {
  return AppBar(
    title: Text(name),
    actions: [
    PopupMenuButton(
        itemBuilder: (context) => [
          PopupMenuItem(
            child: const Text("Change Theme"),
            onTap: () {
              QualifFlutter.of(context).switchTheme();
            },
          )
        ],
      )
    ],
  );
}

void showSnackBar(String message, BuildContext context, int duration) {
  SnackBar snackBar = SnackBar(content: Text(message), duration: Duration(seconds: duration));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void navigate(BuildContext context, Widget target, bool back) {
  Navigator.pop(context);
  if(back) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => target
      )
    );
  }
  else {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => target
      ),
      (route) => false
    );
  }
}
