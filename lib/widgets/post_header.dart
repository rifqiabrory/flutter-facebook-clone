import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  final String profileImage, userName, time;
  const PostHeader(
      {Key? key,
      required this.profileImage,
      required this.userName,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AvatarImage(
          profileImage: profileImage,
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Text(
                    '$time • ',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12.0,
                    ),
                  ),
                  Icon(
                    Icons.public,
                    color: Colors.grey[600],
                    size: 12.0,
                  )
                ],
              ),
            ],
          ),
        ),
        IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: () {},
        ),
      ],
    );
  }
}

class AvatarImage extends StatelessWidget {
  final String profileImage;
  const AvatarImage({Key? key, this.profileImage = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Stack(children: [
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Colors.grey[200],
          backgroundImage: NetworkImage(profileImage != ""
              ? profileImage
              : "https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp"),
        ),
      ]),
    );
  }
}
