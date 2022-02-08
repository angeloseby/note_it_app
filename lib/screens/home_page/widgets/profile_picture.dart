import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color colortheme = const Color.fromARGB(255, 167, 152, 192);

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  _ProfilePictureState createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showDialog(context);
      },
      child: CircleAvatar(
        foregroundColor: colortheme,
        backgroundColor: colortheme,
        radius: 35,
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        backgroundColor: const Color.fromARGB(255, 201, 192, 216),
        title: const Center(child: Text('Choose An Option')),
        children: <Widget>[
          const SizedBox(height: 1),
          TextButton.icon(
            style: TextButton.styleFrom(
              primary: Colors.black,
            ),
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.camera),
            label: const Text(
              "Camera",
              style: TextStyle(fontSize: 18),
            ),
          ),
          TextButton.icon(
            style: TextButton.styleFrom(
              primary: Colors.black,
            ),
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.image),
            label: const Text(
              "Gallery",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      );
    },
  );
}
