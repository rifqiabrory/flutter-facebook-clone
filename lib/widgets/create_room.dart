import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/widgets/create_room_button.dart';

import 'avatar_image.dart';

class CreateRoom extends StatefulWidget {
  const CreateRoom({Key? key}) : super(key: key);

  @override
  _CreateRoomState createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoom> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: Container(
        height: 80.0,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: CreateRoomButton(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: const <Widget>[
                  AvatarImage(
                      imageUrl:
                          "https://i.insider.com/57bf2f13956abc1d008b45f9?width=957&format=jpeg"),
                  AvatarImage(
                      imageUrl:
                          "https://vignette.wikia.nocookie.net/marvelcinematicuniverse/images/0/0a/Nick_Fury_Textless_AoU_Poster.jpg/revision/latest/top-crop/width/360/height/360?cb=20161119163035"),
                  // AvatarImage(
                  //     imageUrl:
                  //         "https://cnet4.cbsistatic.com/img/hajPWxWk1aqwW7RiIRRZlIYsHBg=/940x0/2019/05/06/b8c3ae69-a9e4-4542-bc28-7a88e890b7cd/spider-man-far-from-home-sony.png"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
