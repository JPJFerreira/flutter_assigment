import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback _onPressed;

  MyButton(this._onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Change title'),
      onPressed: _onPressed,
    );
  }
}
