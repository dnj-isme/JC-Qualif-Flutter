import 'package:jc_qualif_flutter/model/comment.dart';

class Product {
  String name, image, description;
  int price;
  List<Comment> comments;
  
  Product({required this.name, required this.image, required this.price, required this.description, required this.comments});
}

var sampleProducts = [
  Product(
      name: "Lindt Dark Chocolate",
      image: "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2023/3/7/dc397627-6109-46da-a348-900253e2cd66.jpg",
      price: 54999,
      description: "Lindt Dark Chocolate 90% Dark Chocolate / Coklat Healthy Brain Booster",
      comments: []
  ),
  Product(
      name: "Pipiltin Cocoa Cokelat Cracks",
      image: "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/10/7/aa174d35-08f6-49d1-9247-8b4fb2e3b28d.jpg",
      price: 75000,
      description: "Pipiltin Cocoa Cokelat Cracks - Dark Chocolate Pistachio Nut. Gramasi : 100gr",
      comments: []
  ),
  Product(
      name: "Coklat Ferrero Rocher",
      image: "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2023/2/14/a0b36662-1c45-40da-b42c-ff0259e5249e.jpg",
      price: 158000,
      description: "Dibuat oleh salah satu produsen cokelat terbesar di dunia yang berbasis di Italia",
      comments: []
  ),
  Product(
      name: "Coklat Chocolate M&m's 11 pack import Australia",
      image: "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/10/22/9ee6d18f-7ee8-4242-8582-dea71e3d2395.jpg",
      price: 125000,
      description: "M&m fun size adalah potongan coklat susu seukuran gigitan yang di lapisi dengan cangkang tipis yang renyah. Cocok untuk berbagi, paket M&M's Milk Chocolate yang menyenangkan ini dikemas penuh dengan cokelat favorit Anda.",
      comments: []
  ),
];