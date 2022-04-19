import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/widgets/post_header.dart';
import 'package:flutter_facebook_clone/widgets/post_status.dart';

class PostItem extends StatefulWidget {
  final String userImage,
      userName,
      caption,
      time,
      imageUrl,
      likes,
      comments,
      shares,
      profileImage;

  const PostItem(
      {Key? key,
      required this.userImage,
      required this.userName,
      required this.caption,
      required this.time,
      required this.imageUrl,
      required this.likes,
      required this.comments,
      required this.shares,
      required this.profileImage})
      : super(key: key);

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 0.0,
      ),
      elevation: 0.0,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  PostHeader(
                    profileImage: widget.userImage,
                    userName: widget.userName,
                    time: widget.time,
                  ),
                  const SizedBox(height: 4.0),
                  Text(widget.caption),
                  widget.imageUrl != ""
                      ? const SizedBox.shrink()
                      : const SizedBox(height: 6.0),
                ],
              ),
            ),
            widget.imageUrl != ""
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Image.network(widget.imageUrl),
                  )
                : const SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: PostStatus(
                likes: widget.likes,
                comments: widget.comments,
                shares: widget.shares,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
