import 'package:facebook/widgets/profile_avater.dart';
import 'package:flutter/material.dart';
import 'widget.dart';
import 'package:facebook/models/models.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentuser;
  const CreatePostContainer(
      {Key? key, required this.currentuser, required User currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 4.0, 0.0),
      height: 100,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentuser.imageUrl),
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: TextField(
                  decoration:
                      InputDecoration(hintText: "whats\'s on your mind"),
                ),
              ),
            ],
          ),
          const Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          Container(
            height: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                    onPressed: () => print("Live"),
                    icon: Icon(Icons.videocam, color: Colors.red),
                    label: Text("Live")),
                VerticalDivider(
                  width: 8.0,
                ),
                TextButton.icon(
                  onPressed: () => print("Photo"),
                  icon: Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                  label: Text("Photo"),
                ),
                VerticalDivider(
                  width: 8.0,
                ),
                TextButton.icon(
                  onPressed: () => print("Room"),
                  icon: Icon(Icons.videocam, color: Colors.purpleAccent),
                  label: Text("Room"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
