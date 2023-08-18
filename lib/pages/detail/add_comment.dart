import 'package:flutter/material.dart';
import 'package:jc_qualif_flutter/model/comment.dart';
import 'package:jc_qualif_flutter/utils/utils.dart';

class AddCommentSection extends StatefulWidget {
  final List<Comment> comments;
  const AddCommentSection({Key? key, required this.comments}) : super(key: key);

  @override
  State<AddCommentSection> createState() => _AddCommentSectionState();
}

class _AddCommentSectionState extends State<AddCommentSection> {
  TextEditingController aliasController = TextEditingController();
  TextEditingController commentController = TextEditingController();

  String? aliasErr;
  String? commentErr;

  @override
  Widget build(BuildContext context) {
    TextField aliasTxt = TextField(
      autocorrect: true,
      decoration: InputDecoration(
          hintText: "Alias",
          labelText: "Insert Alias",
          errorText: aliasErr,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))
          )
      ),
      controller: aliasController,
    );
    TextField commentTxt = TextField(
      autocorrect: true,
      decoration: InputDecoration(
          hintText: "Comment",
          labelText: "Insert Comment",
          errorText: commentErr,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))
          )
      ),
      controller: commentController,
    );

    ElevatedButton commentBtn = ElevatedButton(
      child: const Text("Submit"),
      onPressed: () {
        setState(() {
          commentErr = aliasErr = null;

          String comment = commentController.text;
          String alias = aliasController.text;
          bool valid = true;

          if(comment.isEmpty) {
            valid = false;
            commentErr = "Comment must not empty!";
          }

          if(alias.isEmpty) {
            valid = false;
            commentErr = "Alias must not empty!";
          }

          if(!valid) {
            showSnackBar("Failed to insert comment", context, 5);
          }
          else {
            setState(() {
              widget.comments.add(
                  Comment(
                      dateTime: DateTime.now(),
                      comment: comment,
                      username: alias
                  )
              );
              showSnackBar("Comment inserted successfully!", context, 5);
            });
          }
        });
      },
    );

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 36),
          const Text(
            "Insert Comment",
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 20),
          aliasTxt,
          const SizedBox(height: 10),
          commentTxt,
          const SizedBox(height: 10),
          commentBtn,
        ],
      ),
    );
  }
}
