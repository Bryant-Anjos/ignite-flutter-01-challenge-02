import 'package:flutter/material.dart';
import 'package:notes/widgets/add_note_button.dart';
import 'package:notes/widgets/large_button.dart';
import 'package:notes/widgets/notes_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notes = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NOTES"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          LargeButton(
            text: "New Note",
            onPressed: () async {
              var description = await Navigator.pushNamed(
                context,
                "/create-note",
              );
              if (description != null) {
                notes.add(description as String);
                setState(() {});
              }
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              child: NotesList(
                notes: notes,
                onTap: (i) async {
                  var response = await Navigator.pushNamed(
                    context,
                    "/create-note",
                    arguments: notes[i],
                  );
                  if (response != null) {
                    var description = response as String;
                    if (description.isEmpty) {
                      notes.removeAt(i);
                    } else {
                      notes[i] = description;
                    }
                    setState(() {});
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
