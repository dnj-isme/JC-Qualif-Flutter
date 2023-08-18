import 'package:flutter/material.dart';
import 'package:jc_qualif_flutter/main.dart';
import 'package:jc_qualif_flutter/pages/login.dart';
import 'package:jc_qualif_flutter/utils/utils.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  void handleLogout() {
    navigate(context, const LoginPage(), false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: ElevatedButton(
          onPressed: handleLogout,
          child: const Text("Logout")
        ),
      ),
    );
  }
}
