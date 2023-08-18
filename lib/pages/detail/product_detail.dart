import 'dart:io';

import 'package:flutter/material.dart';
import 'package:jc_qualif_flutter/main.dart';
import 'package:jc_qualif_flutter/model/product.dart';
import 'package:jc_qualif_flutter/pages/detail/add_comment.dart';
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Product Details"),
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
          bottom: const TabBar(tabs: [
            Tab(
              child: Text("Product Description"),
            ),
            Tab(
              child: Text("Comments"),
            ),
            Tab(
              child: Text("Add Comment"),
            )
          ]),
        ),
        body: TabBarView(
          children: [
            DescriptionSection(product: widget.product),
            CommentSection(comments: widget.product.comments),
            AddCommentSection(comments: widget.product.comments)
          ],
        ),
      ),
    );
  }
}
