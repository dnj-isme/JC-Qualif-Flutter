import 'package:flutter/material.dart';
import 'package:jc_qualif_flutter/model/comment.dart';
import 'package:jc_qualif_flutter/utils/utils.dart';

class CommentSection extends StatefulWidget {
  final List<Comment> comments;
  const CommentSection({Key? key, required this.comments}) : super(key: key);

  @override
  State<CommentSection> createState() => _CommentSectionState();
}

class _CommentSectionState extends State<CommentSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 36),
          Text(
            "Comments (${widget.comments.length})",
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 10),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: widget.comments.length,
            itemBuilder: (context, index) {
              Comment curr = widget.comments.elementAt(index);
              return ListTile(
                title: Text(curr.username),
                subtitle: Text("${curr.dateTime.toString()}\r\n"
                    "${curr.comment}", maxLines: 5),
                isThreeLine: true,
                leading: const Icon(Icons.account_circle),
              );
            },
          ),
        ],
      ),
    );
  }
}
