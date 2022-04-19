import 'package:flutter/material.dart';

class StoryItem extends StatefulWidget {
  final String storyImage;
  final String userImage;
  final String userName;
  final bool first;

  const StoryItem(
      {Key? key,
      required this.storyImage,
      required this.userImage,
      required this.userName,
      this.first = false})
      : super(key: key);

  @override
  State<StoryItem> createState() => _StoryItemState();
}

class _StoryItemState extends State<StoryItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
      child: AspectRatio(
        aspectRatio: 1.6 / 2.6,
        child: Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: NetworkImage(widget.first
                    ? "https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp"
                    : widget.storyImage),
                fit: BoxFit.cover),
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.1),
                ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                widget.first
                    ? Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Color(0xFF1777F2),
                        ),
                      )
                    : Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                            image: DecorationImage(
                                image: NetworkImage(widget.userImage),
                                fit: BoxFit.cover)),
                      ),
                Text(
                  widget.userName,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
