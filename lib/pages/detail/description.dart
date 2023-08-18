import 'package:flutter/material.dart';
import 'package:jc_qualif_flutter/model/product.dart';

class DescriptionSection extends StatefulWidget {
  final Product product;
  const DescriptionSection({Key? key, required this.product}) : super(key: key);

  @override
  State<DescriptionSection> createState() => _DescriptionSectionState();
}

class _DescriptionSectionState extends State<DescriptionSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 12),
          Text(
            widget.product.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24
            ),
          ),
          const SizedBox(height: 10),
          Image.network(widget.product.image),
          const SizedBox(height: 10),
          Text(
              "Price: Rp. ${widget.product.price}",
            style: const TextStyle(
              fontSize: 16
            ),
          ),
          const SizedBox(height: 36),
          Text(widget.product.description)
        ],
      ),
    );
  }
}
