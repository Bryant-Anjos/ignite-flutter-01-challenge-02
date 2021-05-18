import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const LargeButton({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 250,
          child: ElevatedButton(
            onPressed: onPressed,
            child: Text(text),
          ),
        ),
      ],
    );
  }
}
