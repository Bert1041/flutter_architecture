import 'package:flutter/material.dart';

class TextLink extends StatelessWidget {
  final String text;
  final Function? onPressed;
   const TextLink(this.text, {Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => widget.onPressed,
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
      ),
    );
  }
}
