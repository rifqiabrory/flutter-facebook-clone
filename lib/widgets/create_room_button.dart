import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/widgets/gradient_button.dart';

class CreateRoomButton extends StatelessWidget {
  const CreateRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 120.0,
      child: OutlineButton(
        onPressed: () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
        color: Colors.white,
        borderSide: const BorderSide(width: 1.0, color: Color(0xFFBBDEFB)),
        textColor: const Color(0xFF1777F2),
        child: Row(
          children: const <Widget>[
            GradientButton(
              child: Icon(
                Icons.video_call,
                size: 25.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 7.0,
            ),
            Text("Create\nRoom"),
          ],
        ),
      ),
    );
  }
}
