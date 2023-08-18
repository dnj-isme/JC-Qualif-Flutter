import 'dart:io';

import 'package:flutter/material.dart';
import 'package:jc_qualif_flutter/model/product.dart';
import 'package:jc_qualif_flutter/pages/detail/comment.dart';
import 'package:jc_qualif_flutter/pages/detail/description.dart';
import 'package:jc_qualif_flutter/utils/utils.dart';

class ProductDetailPage extends StatefulWidget {
  final Product product;
  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {


  @override
  Widget build(BuildContext context) {
    TextField emailTxt = const TextField(
        autocorrect: true,
        decoration: InputDecoration(
            hintText: "Email",
            labelText: "Insert Email",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))
            )
        )
    );

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: generateAppBarWithTheme("Product Details"),
        body: TabBarView(
          children: [
            DescriptionSection(product: widget.product),
            CommentSection(comments: widget.product.comments)
          ],
        ),
      ),
    );
  }
}
