import 'package:flutter/material.dart';

Color colortheme = const Color.fromARGB(255, 167, 152, 192);

class NoteCards extends StatelessWidget {
  const NoteCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      //elevation: 20,
      child: Column(
        children: [
          const SizedBox(height: 20),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: colortheme,
            ),
            trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  size: 30,
                  color: colortheme,
                ),
                onPressed: () {}),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  // Perform some action
                },
                child: const Text('ACTION 1'),
              ),
              TextButton(
                onPressed: () {
                  // Perform some action
                },
                child: const Text('ACTION 2'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
