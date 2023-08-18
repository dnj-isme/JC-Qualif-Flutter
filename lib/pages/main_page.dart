import 'package:flutter/material.dart';
import 'package:jc_qualif_flutter/main.dart';
import 'package:jc_qualif_flutter/pages/main/account.dart';
import 'package:jc_qualif_flutter/pages/main/home.dart';
import 'package:jc_qualif_flutter/pages/main/products.dart';
import 'package:jc_qualif_flutter/utils/utils.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  List<Widget> pages = [
    const HomePage(),
    const ProductsPage(),
    const AccountPage()
  ];

  @override
  Widget build(BuildContext context) {
    BottomNavigationBar navbar = BottomNavigationBar(
      currentIndex: index,
      selectedItemColor: Colors.lightBlueAccent,
      onTap: (value) {
        setState(() {
          index = value;
        });
      },
      items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          tooltip: "Home"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list_alt),
          label: "Products",
          tooltip: "Products"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: "Account",
          tooltip: "Account"
        ),
      ]
    );

    return Scaffold(
      appBar: generateAppBarWithTheme("Main"),
      bottomNavigationBar: navbar,
      body: pages[index],
    );
  }
}
