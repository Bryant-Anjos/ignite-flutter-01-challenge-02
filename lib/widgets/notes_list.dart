import 'package:flutter/material.dart';

class NotesList extends StatelessWidget {
  final List<String> notes;
  final void Function(int) onTap;

  const NotesList({Key? key, required this.notes, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < notes.length; i++)
          Card(
            child: ListTile(
              title: Text(notes[i]),
              onTap: () {
                onTap(i);
              },
            ),
          ),
      ],
    );
  }
}
