import 'package:flutter/material.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  _AddPostState createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: Container(
        padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 20.0,
                      backgroundColor: const Color(0xFF1777F2),
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Colors.grey[200],
                        backgroundImage: const NetworkImage(
                            "https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: 'What\'s on your mind?'),
                  ),
                )
              ],
            ),
            const Divider(
              height: 20.0,
              thickness: 0.5,
            ),
            Container(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    color: Colors.lightGreen,
                    onPressed: () {},
                    iconSize: 20.0,
                    icon: const Icon(Icons.photo_library),
                    tooltip: "Photo",
                  ),
                  const VerticalDivider(
                    width: 8.0,
                  ),
                  IconButton(
                    color: Colors.deepPurpleAccent,
                    onPressed: () {},
                    iconSize: 20.0,
                    icon: const Icon(
                      Icons.video_call,
                    ),
                    tooltip: "Room",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
