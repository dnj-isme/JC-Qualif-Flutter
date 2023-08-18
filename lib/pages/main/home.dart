import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  var images = [
    Image.network("https://img.freepik.com/free-psd/banner-chocolate-shop-template_23-2148669319.jpg"),
    Image.network("https://chocolatemonggo.com/wp-content/uploads/2023/07/Banner-web-New-Eng.jpg"),
    Image.network("https://mir-s3-cdn-cf.behance.net/project_modules/1400/3bdf8c83723387.5d451f490f9a8.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    var banner = CarouselSlider(
      items: images,
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        enlargeCenterPage: true,
        enlargeFactor: 10
      )
    );

    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          banner,
          const Text(
            "JoCkolatos",
            style: TextStyle(
              fontSize: 32
            )
          ),
          const Text("Welcome to JoCkolatos, your ultimate destination for indulgence in the world of exquisite chocolates and heavenly hot chocolate drinks. At JoCkolatos, we have perfected the art of crafting delightful moments through our delectable creations. With a passion for all things chocolate, we take pride in curating an exceptional range of handcrafted chocolates and luxurious hot chocolate blends that cater to the most discerning palates.")
        ],
      ),
    );
  }
}
