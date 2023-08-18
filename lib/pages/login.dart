import 'package:flutter/material.dart';
import 'package:jc_qualif_flutter/pages/main_page.dart';
import 'package:jc_qualif_flutter/utils/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? errEmail, errPassword;
  bool? isGuest = false;

  void handleLogin() {
    resetError();
    String email = emailController.text;
    String password = passwordController.text;
    bool pass = true;
    setState(() {

    });
    RegExp validator = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if(!validator.hasMatch(email)) {
      pass = false;
      setState(() {
        errEmail = "Email is not in valid format";
      });
    }

    if(!(isGuest ?? false)) {
      // cek password: 5 karakter
      if(password.length < 5) {
        pass = false;
        setState(() {
          errPassword = "Password must at least 5 characters";
        });
      }

      if(email != "admin@admin.com" || password != "admin123") {
        pass = false;
        showSnackBar("Invalid credentials", context, 3);
      }
    }

    if(pass) {
      navigate(context, const MainPage(), false);
    }
  }

  void resetError() {
    setState(() {
      errEmail = errPassword = null;
    });
  }

  @override
  Widget build(BuildContext context) {

    TextField emailTxt = TextField(
      autocorrect: true,
      decoration: InputDecoration(
          hintText: "Email",
          labelText: "Insert Email",
          errorText: errEmail,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)))
      ),
      controller: emailController,
    );
    Visibility passwordTxt = Visibility(
      visible: !(isGuest ?? false),
      maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      child: TextField(
        autocorrect: true,
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Minimal 5 character(s)",
          labelText: "Insert Password",
          errorText: errPassword,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))
          )
        ),
        controller: passwordController,
      ),
    );

    ElevatedButton loginBtn = ElevatedButton(
        onPressed: handleLogin,
        child: const Text("Login")
    );

    return Scaffold(
      appBar: generateAppBar("Login Page"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Image.network("https://www.static-src.com/wcsstore/Indraprastha/images/brandlogo//BRD-06348/chocolatos-logo.png"),
            const SizedBox(height: 10),
            emailTxt,
            const SizedBox(height: 10),
            passwordTxt,
            const SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: isGuest,
                  onChanged: (value) {
                    setState(() {
                      isGuest = value;
                    });
                  }
                ),
                const Text("Login as Guest")
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                loginBtn,
              ],
            )
          ],
        ),
      ),
    );
  }
}
