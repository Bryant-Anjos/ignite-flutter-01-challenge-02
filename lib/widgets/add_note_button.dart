import 'package:flutter/material.dart';

class AddNoteButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const AddNoteButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: onPressed,
    );
  }
}
