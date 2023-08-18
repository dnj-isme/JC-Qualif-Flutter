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

    return const Placeholder();
  }
}
