import 'package:flutter/material.dart';
import 'package:jc_qualif_flutter/model/comment.dart';

class CommentSection extends StatefulWidget {
  final List<Comment> comments;
  const CommentSection({Key? key, required this.comments}) : super(key: key);

  @override
  State<CommentSection> createState() => _CommentSectionState();
}

class _CommentSectionState extends State<CommentSection> {
  TextEditingController aliasController = TextEditingController();
  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextField aliasTxt = TextField(
        autocorrect: true,
        decoration: const InputDecoration(
            hintText: "Alias",
            labelText: "Insert Alias",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))
            )
        ),
        controller: aliasController,
    );

    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Comments (${widget.comments.length})",
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 10),

        ],
      ),
    );
  }
}
