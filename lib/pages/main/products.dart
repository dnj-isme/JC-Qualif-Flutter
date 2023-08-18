import 'package:flutter/material.dart';
import 'package:jc_qualif_flutter/model/product.dart';
import 'package:jc_qualif_flutter/pages/detail/product_detail.dart';
import 'package:jc_qualif_flutter/utils/utils.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Product List",
            style: TextStyle(fontSize: 36),
          ),
          const SizedBox(width: 10),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: sampleProducts.length,
            itemBuilder: (context, index) {
              Product curr = sampleProducts.elementAt(index);
              return ListTile(
                onTap: () {
                  navigate(context, ProductDetailPage(product: curr), true);
                },
                title: Text(curr.name),
                subtitle: Text("Rp. ${curr.price}"),
                leading: Image.network(curr.image)
              );
            },
          )
        ],
      ),
    );
  }
}
