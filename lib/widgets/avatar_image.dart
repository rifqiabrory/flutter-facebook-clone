import 'package:flutter/material.dart';

class AvatarImage extends StatelessWidget {
  final String imageUrl;
  const AvatarImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
      child: Stack(
        children: <Widget>[
          CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.grey[200],
            backgroundImage: NetworkImage(imageUrl != ""
                ? imageUrl
                : "https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp"),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: Container(
              height: 15.0,
              width: 15.0,
              decoration: BoxDecoration(
                color: const Color(0xFF50b525),
                shape: BoxShape.circle,
                border: Border.all(width: 2.0, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
